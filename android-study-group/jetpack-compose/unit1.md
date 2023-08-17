# 📚Resources for **Android Basics with Compose: Unit 1**


### 🔗 Unit 1 Link:

https://developer.android.com/courses/android-basics-compose/unit-1

## 📝 NOTES:

**Overview:**

- Kotlin is a modern, open-source programming language developed by JetBrains, initially released in 2011.
- It is fully interoperable with Java and can be used alongside existing Java projects.
- Kotlin is statically typed and designed to be concise, safe, and expressive.
1. Advantages of Kotlin:
    - Concise Syntax: Kotlin reduces boilerplate code and increases code readability, making it more concise than Java.
    - Null Safety: Kotlin provides built-in null safety features, reducing the risk of NullPointerExceptions.
    - Interoperability: Kotlin can call Java code and vice versa without any additional configuration.
    - Extension Functions: Kotlin allows developers to add new methods to existing classes without modifying their code.
    - Smart Casts: Kotlin automatically casts types when certain conditions are met, reducing the need for explicit type checks.
    - Data Classes: Kotlin simplifies the creation of classes for storing data with minimal boilerplate.
    - Coroutines: Kotlin provides native support for asynchronous programming using coroutines.
    - Lambda Expressions: Kotlin supports concise and expressive functional programming using lambda expressions.
2. Basic Syntax:
    - Variables and Data Types: Kotlin uses type inference to automatically determine variable types. Common data types include Int, Double, String, Boolean, etc.
    - Functions: Functions in Kotlin are declared using the "fun" keyword and follow a similar syntax to other programming languages.
    - Control Flow: Kotlin supports if-else statements, when expressions (similar to switch-case), and loops like for and while.
    - Classes and Objects: Classes are defined using the "class" keyword, and objects can be created without the need for the "new" keyword.
3. Null Safety:
    - Nullable Types: In Kotlin, variables are non-nullable by default. To allow null values, you must explicitly define a type as nullable using the "?" symbol.
    - Safe Calls: To avoid null pointer exceptions, Kotlin provides the safe call operator "?." to access properties or call methods on nullable objects.
    - Elvis Operator: The elvis operator "?:" can be used to provide a default value when a nullable variable is null.
4. Extension Functions:
    - Extension functions allow developers to add new functions to existing classes without modifying their source code.
    - This feature is particularly useful when working with classes from external libraries.
5. Coroutines:
    - Kotlin provides native support for coroutines, allowing developers to write asynchronous code in a more sequential and readable manner.
    - Coroutines enable concurrent programming without the complexities of traditional multi-threading.
6. Getting Started:
    - Kotlin can be used with various development environments, including IntelliJ IDEA, Android Studio, and VS Code.
    - To use Kotlin in a project, you can either include the Kotlin compiler or use Kotlin Gradle/Maven plugins.

### 💡 Tips for learners:

<aside>
👉🏽 Embrace Kotlin's null safety features to reduce the risk of NullPointerExceptions. Always handle nullable types properly, using safe calls or the Elvis operator.

</aside>

## 🤔 Reflection Questions:

1. Explain the concept of declarative UI programming in Jetpack Compose. How does it simplify UI development?
2. Explain the role of **`Column`** and **`Row`** in Jetpack Compose. How can you use them to arrange UI elements vertically and horizontally?

## 📚 Additional resources:

- **https://developer.android.com/docs**
- **https://play.kotlinlang.org/koans**
- **https://kotlinlang.org/docs/**
- https://www.codecademy.com/learn/learn-kotlin
- https://www.programiz.com/kotlin-programming
- https://www.freecodecamp.org/news/learn-kotlin-complete-course/

## 👔  Interview Questions:

- What is the role of the "by lazy" delegate in Kotlin? When would you use it, and how does it improve performance?
- What is the purpose of the lateinit modifier in Kotlin? When is it appropriate to use lateinit?
- Discuss the use of sealed classes in Kotlin. When would you use them, and what benefits do they provide?
- How do you declare a nullable variable in Kotlin? Explain how you would safely access its properties or call methods.
- Explain the concept of null safety in Kotlin. How does Kotlin address the issue of NullPointerExceptions?
- How do you add dependencies to an Android project in Android Studio? Explain the role of build.gradle files in managing dependencies.
- How can you use Android Profiler in Android Studio to monitor app performance and identify bottlenecks?
- Explain the purpose of lint checks in Android Studio and how they help improve code quality.
- How do you create a basic layout using Jetpack Compose? Provide an example of a Composable function that displays a simple UI element.
