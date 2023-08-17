# Chapter 3 - The Basic Tools

## **Introduction**

- The importance of having the right tools to get the job done
- The power of using simple and effective tools
- Tools amplify your talent. The better your tools, and the better you know how to use them, the more productive you can be. Start with a basic set of generally applicable tools.

## The Power of Plain Text

<img src="https://media.giphy.com/media/Ph5ELYJov9n5oHzVHZ/giphy.gif">

Plain text doesn’t mean that the text is unstructured; XML, SGML, and HTML are great examples of plain text that has a well-defined structure.

> 💡 **Tip: Keep Knowledge in plain text**

### Drawbacks

- It may take **more space** to store than a compressed binary format
- It may be **computationally more expensive** to interpret and process a plain text file.more space

### The Power of Text

- Insurance against obsolescence: Human-readable forms of data, and self-describing data, will outlive all other forms of data and the applications that created them.
- Leverage: Virtually every tool in the computing can operate on plain text.
- Easier testing

All software becomes legacy as soon as it’s written.

### **The Unix Philosophy**

Unix is famous for being designed around the philosophy of small, sharp tools, each intended to do one thing well.

### Lowest Common Denominator

Ensure that all parties can communicate using a common standard. Plain text is that standard.

> ❓ *Can you describe a time when using the right tool made a big difference in your work?*

## Shell Games

<img src="https://media.giphy.com/media/5WAdRevloGjuw/giphy.gif">

Can't you do everything equally well by pointing and clicking in a GUI? **No**. A benefit of GUIs is *WYSIWYG*—what you see is what you get. The disadvantage is *WYSIAYG*—what you see is all you get.

> 💡 **Tip: Use the power of command Shells**

> ❓*Are there things that you’re currently doing manually in a GUI? Do you ever pass instructions to colleagues that involve a number of individual “click this button,” “select this item” steps? Could these be automated?*

> ❓ *How do you stay up-to-date with new shell commands and scripting techniques? Do you have any go-to shell commands?*

## Power Editing

<img src="https://media.giphy.com/media/13HgwGsXF0aiGY/giphy.gif">

### One Editor

Choose an editor, know it thoroughly, and use it for all editing tasks.

> 💡 **Tip: Use a Single Editor Well**

### Editor features

- Configurable
- Extensible
- Programmable
- Syntax highlighting
- Auto-completion
- Auto-indentation
- Initial code or document boilerplate
- Tie-in to help systems
- IDE-like features (compile, debug, and so on)

### Productivity

A good text editor should be highly customisable, allowing you to configure it to match your preferences, can help streamline common operations and work style. This can include things like setting up key bindings, configuring syntax highlighting, and customising the user interface.

> ❓ *What text editor do you use, and why did you choose it?*

## Source Code Control

<img src="https://media.giphy.com/media/VePtB3roynxfLYicuV/giphy.gif">

Source code control is a system that allows you to track changes made to your code over time. It enables you to collaborate with other developers, maintain multiple versions of your code, and revert to a previous version if necessary.

> 💡 **Tip: Always Use Source Code Control**

### Source Code Control and Builds

You can have product builds that are *automatic* and *repeatable*.

### But My Team Isn’t Using Source Code Control

You should implement your own private source control.

Choose a source code control system that matches your needs and the needs of your team. There are many different systems available, such as Git, Subversion, and Mercurial.

> ❓ *What version control system do you use, and why did you choose it?*

> ❓ *How do you handle conflicts when merging code?*

## Debugging

<img src="https://media.giphy.com/media/11ZSwQNWba4YF2/giphy.gif">

No one writes perfect software.

### Psychology of Debugging

Embrace the fact that debugging is just *problem solving.*

> 💡 **Tip: Fix the Problem, Not the Blame**

### A Debugging Mindset

> 💡 **Tip: Don't Panic**

Don't waste a single neuron on the train of thought that begins "but that can't happen" because quite clearly it can, and has. Always try to discover the root cause of a problem, not just this particular appearance of it.

### Where to Start

- Before you start, check the warnings or better remove all of them.
- You first need to be accurate in your observations and data.

### Debugging Strategies

Once *you* think you know what is going on, it’s time to find out what the *program* thinks is going on.

### Bug Reproduction

- The best way to start fixing a bug is to make it reproducible.
- The second best way is to make it reproducible with a *single command*.

### Visualize Your Data

- May be implemented as printed text, or as fields in a GUI dialog box or list.
- Use the tools that the debugger offers you. Pen and paper can also help.

### Tracing

Know what happens before and after.

### Rubber Ducking

Explain the bug to someone else.

### Process of Elimination

It is possible that a bug exists in the OS, the compiler, or a third-party product — but this should not be your first thought.

Even if the problem *does* lie with a third party, you’ll still have to eliminate your code before submitting the bug report.

> 💡 **Tip: "select" Isn't Broken**

Rely on a good old-fashioned binary search. See if the symptoms are present at either of two far away spots in the code. Then look in the middle. If the problem is present, then the bug lies between the start and the middle point; otherwise, it is between the middle point and the end. 

### The Element of Surprise

> 💡 **Tip: Don't Assume It—Prove It**

When you come across a surprise bug, beyond merely fixing it, you need to determine why this failure wasn’t caught earlier.

### Debugging Checklist

- Is the problem being reported a direct result of the underlying bug, or merely a symptom?
- Is the bug really in the compiler? Is it in the OS? Or is it in your code?
- If you explained this problem in detail to a coworker, what would you say?
- If the suspect code passes its unit tests, are the tests complete enough? What happens if you run the unit test with this data?
- Do the conditions that caused this bug exist anywhere else in the system?

> ❓ *What debugging tools and techniques do you use, and how do you choose them? Can you describe a time when you used a systematic approach to debugging a complex problem?*

## Text Manipulation

<img src="https://media.giphy.com/media/dlkVkmHuFlQnUky2HT/giphy.gif">

> 💡 **Tip: Learn a Text Manipulation Language**

- Text manipulation is the process of modifying and transforming text data. It's an important part of many programming tasks, such as data processing and formatting output.
- Unix developers often like to use the power of their command shells, augmented with tools such as awk and sed.
- Using a scripting language such as Perl or Python can be an effective way to perform text manipulation tasks.

## Code Generators

<img src="https://media.giphy.com/media/EILhSIPzBUqru/giphy.gif">

> 💡 **Tip: Write Code That Writes Code**

Two main types of code generators:

- **Passive code generators** are run once to produce a result. They are basically parameterised templates, generating a given output from a set of inputs.
- **Active code generators** are used each time their results are required. Take a single representation of some piece of knowledge and convert it into all the forms your application needs.

### Code Generators Needn't Be Complex

Keep the input format simple, and the code generator becomes simple.

### Code Generators Needn't Generate Code

You can use code generators to write just about any output: HTML, XML, plain text - any text that might be an input somewhere else in your project.
