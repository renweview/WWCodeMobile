All rights go to **The Pragmatic Programmer, by Hunt and Thomas. Topic 35: Actors and Processes.**
Actors and Processes Example Background: Let’s implement a diner using actors. In this case, we’ll have three (the customer, the waiter, and the pie case).

- The overall message flow will look like this:
- We (as some kind of external, God-like being) tell the customer that
- they are hungry
- In response, they’ll ask the waiter for pie
- The waiter will ask the pie case to get some pie to the customer
- If the pie case has a slice available, it will send it to the customer, and also notify the waiter to add it to the bill
- If there is no pie, the case tells the waiter, and the waiter apologizes to the customer

We’ve chosen to implement the code in JavaScript using the Nact library. We’ve added a little wrapper to this that lets us write actors as simple objects, where the keys are the message types that it receives and the values are functions to run when that particular message is received. (Most actor systems have a similar kind of structure, but the details depend on the host language.)

Let’s start with the customer. The customer can receive three messages:

- You’re hungry (sent by the external context)
- There’s pie on the table (sent by the pie case)
- Sorry, there’s no pie (sent by the waiter)

```jsx
const customerActor = {
'hungry for pie': (msg, ctx, state) => {
return dispatch(state.waiter,
{ type: "order", customer: ctx.self, wants: 'pie' })
},
'put on table': (msg, ctx, _state) =>
console.log(`${ctx.self.name} sees "${msg.food}" appear on the table`),
'no pie left': (_msg, ctx, _state) =>
console.log(`${ctx.self.name} sulks…`)
}
```

The interesting case is when we receive a ‘‘hungry for pie’” message, where we then send a message off to the waiter. (We’ll see how the customer knows about the waiter actor shortly.)

Here’s the waiter’s code:

```jsx
const waiterActor = {
"order": (msg, ctx, state) => {
if (msg.wants == "pie") {
dispatch(state.pieCase,
{ type: "get slice", customer: msg.customer, waiter: ctx.self })
}else {
console.dir(`Don't know how to order ${msg.wants}`);
}
},
"add to order": (msg, ctx) =>
console.log(`Waiter adds ${msg.food} to ${msg.customer.name}'s order`),
"error": (msg, ctx) => {
dispatch(msg.customer, { type: 'no pie left', msg: msg.msg });
console.log(`\nThe waiter apologizes to ${msg.customer.name}:${msg.msg}`)
}
};
```

When it receives the ’order’ message from the customer, it checks to see if the request is for pie. If so, it sends a request to the pie

case, passing references both to itself and the customer.

The pie case has state: an array of all the slices of pie it holds. (Again, we see how that gets set up shortly.) When it receives a ’get slice’ message from the waiter, it sees if it has any slices left. If it does, it passes the slice to the customer, tells the waiter to update the order, and finally returns an updated state, containing one less slice. Here’s the code:

```jsx
const pieCaseActor = {
'get slice': (msg, context, state) => {
if (state.slices.length == 0) {
dispatch(msg.waiter,
		{ type: 'error', msg: "no pie left", customer: msg.customer })
return state
	}
else {
var slice = state.slices.shift() + " pie slice";
dispatch(msg.customer,
		{ type: 'put on table', food: slice });
dispatch(msg.waiter,
		{ type: 'add to order', food: slice, customer: msg.customer });
return state;
		}
	}
}
```

Although you’ll often find that actors are started dynamically by other actors, in our case we’ll keep it simple and start our actors manually. We will also pass each some initial state:

- The pie case gets the initial list of pie slices it contains
- We’ll give the waiter a reference to the pie case
- We’ll give the customers a reference to the waiter.

```jsx
const actorSystem = start();
let pieCase = start_actor(
actorSystem,
'pie-case',
pieCaseActor,
{ slices: ["apple", "peach", "cherry"] });

let waiter = start_actor(
actorSystem,
'waiter',
waiterActor,
{ pieCase: pieCase });
```

And finally we kick it off. Our customers are greedy. Customer 1 asks for three slices of pie, and customer 2 asks for two:

```jsx
dispatch(c1, { type: 'hungry for pie', waiter: waiter });
dispatch(c2, { type: 'hungry for pie', waiter: waiter });
dispatch(c1, { type: 'hungry for pie', waiter: waiter });
dispatch(c2, { type: 'hungry for pie', waiter: waiter });
dispatch(c1, { type: 'hungry for pie', waiter: waiter });
sleep(500)
.then(() => {
		stop(actorSystem);
})
```

When we run it, we can see the actors communicating. The order you see may well be different.

```jsx
$ node index.js
customer1 sees "apple pie slice" appear on the table
customer2 sees "peach pie slice" appear on the table

Waiter adds apple pie slice to customer1's order
Waiter adds peach pie slice to customer2's order
customer1 sees "cherry pie slice" appear on the table
Waiter adds cherry pie slice to customer1's order

The waiter apologizes to customer1: no pie left
customer1 sulks…
The waiter apologizes to customer2: no pie left
customer2 sulks…
```