# Chapter 2 - **A Pragmatic Approach (19th Jan, 2023)**

## 7. The Evils of Duplication

![https://media.giphy.com/media/YAy9NNu16pYYg/giphy.gif](https://media.giphy.com/media/YAy9NNu16pYYg/giphy.gif)

The problem is that it’s easy to duplicate knowledge in the specifications, processes, and programs that we develop, and when we do so, we invite a maintenance nightmare—one that starts well before the application ships.

We feel that the only way to develop software reliably, and to make our developments easier to understand and maintain, is to follow what we call the *DRY* principle:

EVERY PIECE OF KNOWLEDGE MUST HAVE A SINGLE, UNAMBIGU- OUS, AUTHORITATIVE REPRESENTATION WITHIN A SYSTEM.

**Tip 11: DRY— Don't Repeat Yourself**

Types of duplication:

- **Imposed duplication** Developers feel they have no choice—the environment seems to require duplication.
- **Inadvertent duplication** Developers don't realize that they are duplicating information.
- **Impatient duplication** Developers get lazy and duplicate because it seems easier.
- **Interdeveloper duplication** Multiple people on a team (or on different teams) duplicate a piece of information.

**Tip 12: Make it easy to reuse**

## 8. Orthogonality

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/47199bf5-1300-415e-84de-2296fdc54044/Untitled.png)

Two or more things are orthogonal if changes in one do not affect any of the others. Also called *cohesion*. 

In a well-designed system, the database code will be orthogonal to the user interface: you can change the interface without affecting the database, and swap databases without changing the interface.

**Tip 13: Eliminate Effects Between Unrelated Things**

Major Benefits:

- Gain Productivity
    - Changes are localized
    - Reuse Components
    - M x N orthogonal components do more than M x N non orthogonal components
- Reduce Risk
    - Diseased sections or code are isolated
    - The resulting system is less fragile
    - Better tested
    - Not tied to a product or platform

### **Ways to apply the principle of orthogonality:**

- Project Teams: Organize teams into groups with well-defined responsibilities and minimal overlap
- Design: Modular, component-based, and layered
- Toolkits and Libraries: Choose third-party toolkits and libraries wisely
- Coding:
    - Keep your code decoupled: Write shy code — modules that don’t reveal anything unnecessary to other modules and that don’t rely on other modules’ implementations.
    - Avoid global data
    - Avoid similar functions
- Testing: System testing can be performed at the individual module level
- Documentation: The axes are content and presentation. With truly orthogonal documenta- tion, you should be able to change the appearance dramatically without changing the content.

## 9. Reversibility

![https://media.giphy.com/media/3o6Mb35oJlnmin3IWI/giphy.gif](https://media.giphy.com/media/3o6Mb35oJlnmin3IWI/giphy.gif)

**Tip 14: There are no Final Decisions.**

Flexible Architecture: Think about maintaining flexibility in the areas of architecture, deployment, and vendor integration.

Whatever mechanism you use, *make it reversible*. If something is added automatically, it can be taken out automatically as well.

## 10. Tracer Bullets

![Tracer Bullets.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b1a3c703-2c56-4d8b-b5fc-f3423e897e2d/Tracer_Bullets.gif)

For new projects, users requirements may be vague. There are many unknowns with the use of new algorithms, techniques, languages, or libraries. And environment will change before you are done. We're looking for something that gets us from a requirement to some aspect of the final system quickly, visibly, and repeatably.

**Tip 15: Use Tracer Bullets to Find the Target**

Tracer development is consistent with the idea that a project is never finished: there will always be changes required and functions to add. It is an incremental approach.

Advantages:

- Users get to see something working early
- Developers build a structure to work in
- You have an integration platform
- You have something to demonstrate
- You have a better feel for progress

### **Tracer Bullets Don't Always Hit Their Target**

Tracer bullets show what you're hitting. This may not always be the target. You then adjust your aim until they're on target. That's the point.

### **Tracer Code versus Prototyping**

With a prototype, you're aiming to explore specific aspects of the final system. Tracer code is used to know how the application as a whole hangs together.

Prototyping generates disposable code. Tracer code is lean but complete, and forms part of the skeleton of the final system.

## 11. Prototypes and Post-it Notes

![https://media.giphy.com/media/PjltrbWBuDdZ5PigyJ/giphy.gif](https://media.giphy.com/media/PjltrbWBuDdZ5PigyJ/giphy.gif)

We build software prototypes to analyze and expose risk, and to offer chances for correction at a greatly reduced cost.

### **Things to Prototype**

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

**Tip 16: Prototype to Learn**

Avoid details:

- Correctness
- Completeness
- Robustness
- Style

### Prototyping Architecture:

- Are the responsibilities of the major components well defined and appropriate?
- Are the collaborations between major components well defined?
- Is coupling minimized?
- Can you identify potential sources of duplication?
- Are interface definitions and constraints acceptable?
- Does every module have an access path to the data it needs during execution? Does it have that access *when* it needs it?

Make it *very* clear that this code is disposable, incomplete, and unable to be completed.

## 12. Domain Languages

![https://media.giphy.com/media/RvZzOZ0h0kVrxputN8/giphy.gif](https://media.giphy.com/media/RvZzOZ0h0kVrxputN8/giphy.gif)

Sometimes it makes sense to develop an application-specific mini-language that allows you to express your intent in a much clearer way than you otherwise could with a general purpose language.

**Tip 17: Program Close to the Problem domain**

## 13. Estimating

![https://media.giphy.com/media/l0ErE25Xpq6lNf2TK/giphy.gif](https://media.giphy.com/media/l0ErE25Xpq6lNf2TK/giphy.gif)

**Tip 18: Estimate to Avoid Surprises**

### **How Accurate Is Accurate Enough?**

**First:** Do they need high accuracy, or are they looking for a ballpark figure?

**Second:** Scale time estimates 

| Duration | Quote estimate in |
| --- | --- |
| 1 - 15 days | days |
| 3 - 8 weeks | weeks |
| 8 - 30 weeks | months |
| 30+ weeks | think hard before giving an estimate |

### **Where Do Estimates Come From?**

Ask someone who's been in a similar situation in the past.

- Understand What's Being Asked
- Build a Model of the System
- Break the Model into Components
- Give Each Parameter a Value
- Calculate the Answers
- Keep Track of Your Estimating Prowess

### **Estimating Project Schedules**

The only way to determine the timetable for a project is by gaining experience on that same project. Practice incremental development, repeating the following steps:

- Check requirements
- Analyze risk
- Design, implement, integrate
- Validate with the users

The refinement and confidence in the schedule gets better and better each iteration

**Tip 19: Iterate the Schedule with the Code**

### What to Say When Asked for an Estimate

**"I'll get back to you."**

You almost always get better results if you slow the process down and spend some time going through the steps we describe in this section. Estimates given at the coffee machine will (like the coffee) come back to haunt you.

<aside>
💡 Are you good with giving estimates? How accurate are your estimates?

</aside>
