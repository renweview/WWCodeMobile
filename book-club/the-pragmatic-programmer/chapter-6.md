# Concurrency

## Concurrency vs Parallelism

Concurrency is when pieces of code ACT AS IF they run at the same time.

Parallelism is when they ACTUALLY run at the same time.

## Breaking Temporal Coupling

### **Temporal coupling**

- Code is forced to follow a sequence to achieve a certain goal.
- You must do Step A before you can do Step B.
- This is not flexible and not very realistic.

### **Looking for Concurrency**

When looking for concurrency, ask the following questions:

- What *can* happen at the same time?
- What ****must**** be the order of things relative to time?

> **💡 Tip:** Analyze Workflow to Improve Concurrency

An **activity diagram** is one way to design this. It shows the potential areas of concurrencies and it contains:

- Set of actions represented by rounded rectangles
- Arrows representing the flow of these actions
- Synchronization bars that represent actions that can happen at the same time and that needs to be completed in order to proceed to the next flow
- Actions with no arrows that means you can start them an any point in time

### Opportunities for Concurrency

We should look for activities that would take time, then look for other activities that can be done alongside that. This way, we’re not taking too much time in our code.

### Opportunities for Parallelism

We should look for pieces of work that are independent of each other. Here is a common pattern when we have a large piece of work:

- Determine which ones are independent of each other, then split them accordingly
- Process each independent task in parallel
- If a task depends on another, that task will wait until the results of the other task is available
- Combine the results

> **❓ Challenge:** How many tasks do you perform in parallel when you get ready for work in the morning? Could you express this in a UML activity diagram? Can you find some way to get ready more quickly by increasing concurrency?

Sample Answer:

```python
______________
|   Start      |
|______________|
        |
        v
 _______________
|Brush Teeth   |
|_______________|
        |
        v
 _______________
|  Take Shower |
|_______________|
        |
        v
 _______________
|  Get Dressed |
|_______________|
        |
        v
 _______________
|  Check Email |
|_______________|
        |
        v
 _______________
|   Have      |
|  Breakfast  |
|_______________|
        |
        v
 _______________
| Prepare Work |
|     Bag     |
|_______________|
        |
        v
 _______________
|   End        |
|_______________|
```

To increase **concurrency** and **get ready more quickly**, a software engineer could consider delegating some of the tasks to other family members or housemates. For example, they could ask their partner or kids to prepare breakfast or pack their work bag while they are taking a shower or getting dressed. Another option could be to optimize the order of tasks to minimize the idle time between them. For instance, they could start checking emails while having breakfast, or plan their outfit the night before to streamline the getting dressed process. By identifying and eliminating bottlenecks in their morning routine, a software engineer can reduce the time it takes them to get ready for work.

## Shared State Is Incorrect State

Share state is incorrect state because each call site of this state has no regard for each other.

### Nonatomic Updates

A **nonatomic update** means that the underlying value can change in the middle.

**What is the problem with that?**

If the underlying value is changed in the middle by one of the two call sites, then this would result in one call site having the correct value, but the other call site will have an incorrect value and it will process that incorrect value.

**Semaphores and Other Forms of Mutual Exclusion**

A ******************semaphore****************** is something that can only be owned by one action at a time.

In this context, anything that wants to update a certain value can only do so if it holds the semaphore.

Here is an example:

- Two call sites execute the code at the same time
- Both try to lock the semaphore, but only one succeeds
- The one (call site A) that successfully locked the semaphore continues
- The one (call site B) that didn’t get the semaphore is waiting
- When call site A completes its task, it will unlock the semaphore
- Then, call site B will proceed to run its task
- Call site B will now get an updated state based on whatever task was done by call site A

### Multiple Resource Transactions

Here are 2 ways to achieve this:

- Handle exceptions when a resource is not available
- Create a completely new resource or new module that handles said “multiple resources”

### Non-Transactional Updates

> Whenever two or more instances of your code can access some [mutable] resource at the same time, you’re looking at a potential problem.

> **💡 Tip:** Random Failures Are Often Concurrency Issues

## Actors and Processes

**Actor**

- Independent virtual processor
- Has its own local and private state
- Has its own mailbox
- If a message appears and it’s idle, it will wake up and process that message
- If it finishes processing that message, it will proceed to process the next message (if there’s any)
- If the mailbox is empty, it will go idle again

******Process******

- General-purpose virtual processor
- Can be constrained to behave like actors

### Actors Can Only Be Concurrent

- No single thing that’s in control
- State is only held in messages and in the local state of each actor
- All messages are one way
    - If you want to get a response, then you should provide a mailing address along with the message you’re sending
- Actors process messages to completion and they only process one message at a time

> **💡 Tip:** Use Actors For Concurrency Without Shared State

### No Explicit Concurrency

- No need to write code to handle concurrency
- No shared state
- No need to code in explicit end-to-end logic
- Actors execute tasks based on the messages that they receive

> **❓ Challenge:** Convert the examples in this section to your preferred programming language.

> **❓ Challenge:** Extend the examples to let customers order pie à la mode.

## Blackboards

Key features of the **blackboard approach**

- The participants or contributors are independent and they don’t know of the existence of the others
- The participants or contributors only share a desire to solve the problem at hand
- Different participants or contributors may come and go and may work at different times
- There are no restrictions as to what type of information may be placed on the blackboard
- Gradually, a conclusion is drawn from the information on the blackboard

**Computer-based blackboard systems**

- Were originally used in AI applications
- Executes queries by using some form of pattern matching
- Executes queries by partial matching of fields (via templates and wildcards) or by subtypes

> **❓ Question:** Can you think of scenarios where you can use the blackboard approach in programming? How about using it in the real world: at work or at home?
