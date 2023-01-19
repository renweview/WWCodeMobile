# Chapter 2 - **A Pragmatic Approach (19th Jan, 2023)**

# The Essence of Good Design

Good design = ETC = **Easier to Change** = decoupled = easily replaceable

ETC is a guide which can help you choose between different options/approach—you should choose the one that will be easier to change in the future.

Make it a habit to always ask yourself if your code is easier or harder to change and this will be second nature to you.

<aside>
❓ Can you think of a recent experience where you didn’t find it all too easy to change some code due to a change in requirement for example?

</aside>

# The Evils of Duplication

![https://media.giphy.com/media/YAy9NNu16pYYg/giphy.gif](https://media.giphy.com/media/YAy9NNu16pYYg/giphy.gif)

The problem is that it’s easy to duplicate knowledge in the specifications, processes, and programs that we develop, and when we do so, we invite a **maintenance nightmare**—one that starts well before the application ships.

We feel that the only way *to develop software reliably*, and to make our developments easier to understand and maintain, is to follow what we call the **DRY principle**:

EVERY PIECE OF KNOWLEDGE MUST HAVE A SINGLE, UNAMBIGUOUS, AUTHORITATIVE REPRESENTATION WITHIN A SYSTEM.

## **DRY Is More Than Code**

Dry is about the **duplication of knowledge**, of intent. You can have two different implementations, but essentially, both could still be expressing the same knowledge.

<aside>
💡 **DRY— Don't Repeat Yourself**

</aside>

“If you change one, you have to remember to change the others…”

“It isn’t a question of whether you’ll remember: it’s a question of when you’ll forget.”

### **Types of duplication**

- **Imposed duplication** Developers feel they have no choice—the environment seems to require duplication.
- **Inadvertent duplication** Developers don't realize that they are duplicating information.
- **Impatient duplication** Developers get lazy and duplicate because it seems easier.
- **Interdeveloper duplication** Multiple people on a team (or on different teams) duplicate a piece of information.

Despite this, it will also be good to note that ****************not all code duplication is knowledge duplication****************. Some just have the same code, but the knowledge they represent are different.

<aside>
❓ Can you find the duplicated code/s in the following? The following is the logic from the book itself, just translated to Swift.

</aside>

```swift
func printBalance(account: Account) {
	print(String(format: "Debits: %10.2f\n", account.debits)
	print(String(format: "Credits: %10.2f\n", account.credits)

	if account.fees < 0 {
		print(String(format: "Fees: %10.2f-\n", -account.fees)
	} else {
		print(String(format: "Fees: %10.2f\n", fees)
	}

	print("       -----\n")

	if account.balance < 0 {
		print(String(format: "Balance: %10.2f-\n", -account.balance)
	} else {
		print(String(format: "Balance: %10.2f\n", account.balance)
	}
}
```

<aside>
💡 **Make it easy to reuse**

</aside>

# Orthogonality

<img alt="image" src="https://user-images.githubusercontent.com/50391217/213331248-5ce06f68-a1c9-4fdc-82a1-7c89abc38da2.png">

Two or more things are orthogonal if **changes in one do not affect any of the others**. Also called *cohesion*.

In a well-designed system, the database code will be orthogonal to the user interface: you can change the interface without affecting the database, and swap databases without changing the interface.

<aside>
💡 **Eliminate Effects Between Unrelated Things**

</aside>

Major Benefits:

- Gain Productivity
    - Changes are localized
    - Reuse Components
    - M x N orthogonal components do more than M x N non orthogonal components
- Reduce Risk
    - Diseased sections of code are isolated
    - The resulting system is less fragile
    - Better tested
    - Not tied to a a particular vendor, product or platform

## **Ways to apply the principle of orthogonality**

- Project Teams: Organize teams into groups with well-defined responsibilities and minimal overlap
- Design: Modular, component-based, and layered
- Toolkits and Libraries
    - Choose third-party toolkits and libraries wisely
    - Ask yourself whether it imposes changes in your code that shouldn’t be there
    - Decorator Pattern - adding functionality to things without changing them
- Coding
    - Keep your code decoupled: Write shy code — modules that don’t reveal anything unnecessary to other modules and that don’t rely on other modules’ implementations.
    - Avoid global data
    - Avoid similar functions
- Testing: System testing can be performed at the individual module level
- Documentation: The axes are content and presentation. With truly orthogonal documenta- tion, you should be able to change the appearance dramatically without changing the content.

<aside>
❓ In an orthogonal design, if you dramatically change the requirements behind a particular function, only how many modules should be affected?

</aside>

<aside>
❓ Food for thought - How decoupled is your code from changes in the real world?

One example is using incrementing (from 1 to N) 32-bit integers as the unique identifier of users. As the number of users or the population itself exceed the maximum value for 32-bit integers, what now?

</aside>

# Reversibility

![https://media.giphy.com/media/3o6Mb35oJlnmin3IWI/giphy.gif](https://media.giphy.com/media/3o6Mb35oJlnmin3IWI/giphy.gif)

There is always more than one way of doing something (e.g. multiple database options, multiple third party libraries implementing the same thing, etc.). This is why many teams keep their eyes opened for such possible future switch from one option to another.

<aside>
💡 **There Are No Final Decisions**

</aside>

**Flexible Architecture:** Think about maintaining flexibility, not just in code, but also in the areas of architecture, deployment, and vendor integration.

You can’t plan for the volatility, but what you can do is *make it easy to change*. Whatever mechanism you use, *make it reversible*. If something is added automatically, it can be taken out automatically as well.

<aside>
💡 **Forgo Following Fads**

</aside>

<aside>
❓ What mechanisms do you use on your code, architecture, deployment and/or vendor integrations to make it easy to change for possible future switch from one option to another?

</aside>

# Tracer Bullets

![Tracer Bullets.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b1a3c703-2c56-4d8b-b5fc-f3423e897e2d/Tracer_Bullets.gif)

For new projects, users requirements may be vague. There are many unknowns with the use of new algorithms, techniques, languages, or libraries. And environment will change before you are done. We're looking for something that gets us from a requirement to some aspect of the final system quickly, visibly, and repeatably.

<aside>
💡 **Use Tracer Bullets to Find the Target**

</aside>

Tracer development is consistent with the idea that a project is never finished: there will always be changes required and functions to add. It is an incremental approach.

Advantages:

- Users get to see something working early
- Developers build a structure to work in
- You have an integration platform
- You have something to demonstrate
- You have a better feel for progress

## **Tracer Bullets Don't Always Hit Their Target**

Tracer bullets show what you're hitting. This may not always be the target. You then adjust your aim until they're on target. That's the point.

## **Tracer Code versus Prototyping**

With a prototype, you're aiming to explore specific aspects of the final system. Tracer code is used to know how the application as a whole hangs together.

Prototyping generates disposable code. Tracer code is lean but complete, and forms part of the skeleton of the final system.

# Prototypes and Post-it Notes

![https://media.giphy.com/media/PjltrbWBuDdZ5PigyJ/giphy.gif](https://media.giphy.com/media/PjltrbWBuDdZ5PigyJ/giphy.gif)

We build software prototypes to analyze and expose risk, and to offer chances for correction at a greatly reduced cost.

## **Things to Prototype**

Prototype anything that:

- carries risk
- hasn't been tried before
- is absolutely critical to the final system
- is unproven
- is experimental
- is doubtful

Samples:

- Architecture
- New functionality in an existing system
- Structure or contents of external data
- Third-party tools or components
- Performance issues
- User interface design

<aside>
💡 **Prototype to Learn**

</aside>

Avoid details:

- Correctness
- Completeness
- Robustness
- Style

## Prototyping Architecture

- Are the responsibilities of the major components well defined and appropriate?
- Are the collaborations between major components well defined?
- Is coupling minimized?
- Can you identify potential sources of duplication?
- Are interface definitions and constraints acceptable?
- Does every module have an access path to the data it needs during execution? Does it have that access *when* it needs it?

Make it *very* clear that this code is disposable, incomplete, and unable to be completed.

# Domain Languages

![https://media.giphy.com/media/RvZzOZ0h0kVrxputN8/giphy.gif](https://media.giphy.com/media/RvZzOZ0h0kVrxputN8/giphy.gif)

Sometimes it makes sense to develop an application-specific mini-language that allows you to express your intent in a much clearer way than you otherwise could with a general purpose language.

<aside>
💡 **Program Close to the Problem domain**

</aside>

# Estimating

![https://media.giphy.com/media/l0ErE25Xpq6lNf2TK/giphy.gif](https://media.giphy.com/media/l0ErE25Xpq6lNf2TK/giphy.gif)

<aside>
💡 **Estimate to Avoid Surprises**

</aside>

## **How Accurate Is Accurate Enough?**

**First:** Do they need high accuracy, or are they looking for a ballpark figure?

**Second:** Scale time estimates 

## **Where Do Estimates Come From?**

Ask someone who's been in a similar situation in the past.

- Understand What's Being Asked
- Build a Model of the System
- Break the Model into Components
- Give Each Parameter a Value
- Calculate the Answers
- Keep Track of Your Estimating Prowess

## **Estimating Project Schedules**

The only way to determine the timetable for a project is by gaining experience on that same project. Practice incremental development, repeating the following steps:

- Check requirements
- Analyze risk
- Design, implement, integrate
- Validate with the users

The refinement and confidence in the schedule gets better and better each iteration

<aside>
💡 **Iterate the Schedule with the Code**

</aside>

## What to Say When Asked for an Estimate

**"I'll get back to you."**

You almost always get better results if you slow the process down and spend some time going through the steps we describe in this section. Estimates given at the coffee machine will (like the coffee) come back to haunt you.

<aside>
❓ Are you good with giving estimates? How accurate are your estimates?

</aside>

<aside>
💡 **There are no Final Decisions**

</aside>
