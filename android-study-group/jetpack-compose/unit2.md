# 📚Resources for **Android Basics with Compose: Unit 2**

### 🔗 Unit 2 Link:

https://developer.android.com/courses/android-basics-compose/unit-2

## 📝 NOTES:

Building interactive android apps with Jetpack compose 

We have 3 pathway for this unit, with an interactive coding portion as follows:

- Get deeper in Kotlin. We’ll learn how to:
    - Write conditions in Kotlin
    - Use Kotlin nullability
    - Use classes and objects
    - Kotlin functions, lambdas and high-order functions
- Learn how to add buttons to our compose UI which respond to user actions - clicks.
- We’ll be introduced to compose states, learn how to use and manipulate state. Among the things we’ll learn are:
    - `State` and `Mutablestate`: use of mutableStateOf() to create an observable MutableState
    - Use of `remember` function to store a value in the Composition during initial composition
    - `State hoisting` : Learn about stateful versus stateless Composables
    - Automated testing: Local and instrumentation tests

### 💡 Tips for learners:

<aside>
👉🏽 You should hoist the state when you need to:

- Share the state with multiple composable functions.
- Create a stateless composable that can be reused in your app.
</aside>

## 🤔 Reflection Questions:

1. Pathway 1’s first codelab mentions using the `is` keyword to check for data types within a `when` statement. Can you explain a scenario in which this feature might be useful? How does this enhance the expressiveness and flexibility of the `when` statement compared to other conditional structures?
2. a. What is the purpose of higher-order functions in Kotlin, and how can they be utilized with lambda expressions?
    
    b. Describe the usage of the **`repeat()`** function as a higher-order function, including its parameters and how it simplifies code compared to traditional loop structures.
    
3. When considering the journey from basic state handling using hardcoded values to the sophisticated use of **`remember`** and hoisting state in the "Tip Time" app (Path 3, section 3), what broader insights do you gain about the significance of state management in building interactive user interfaces? How does this journey reflect the evolution of your understanding of Compose's approach to handling state?

💡Selected Reflection Question Sample Answer: 

2a: Higher-order functions in Kotlin are functions that either take other functions as parameters or return functions. They enable developers to abstract and modularize code by providing more flexible ways to manipulate and process functions. 
2b: The **`repeat()`** function takes two parameters: **`times`**, which indicates how many times to repeat the action, and **`action`**, a lambda expression representing the code to execute in each iteration. This function simplifies the process of repeating a specific action a certain number of times, as it replaces the need for traditional loop structures. By using **`repeat()`**, developers can achieve concise and readable code while reducing the complexity of managing loop counters and indices.

## 👔  Interview Questions:

- How would you write cascading if else statements for efficiency, in Kotlin?
- What is the safe-call operator and what are its benefits?
- What is the not-null assertion operator, and when to use it?
- What is the Elvis operator?
- What are the different visibility modifiers in Kotlin?
- What are the advantages of using Jetpack Compose over the traditional View system?
- What are Modifiers used for in Compose?
- How do you debug an issue? Explain your thought process and the tools that you use.
- What does recomposition mean in Compose?
