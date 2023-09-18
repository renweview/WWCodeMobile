# 📚Resources for **Android Basics with Compose: Unit 4**

### 🔗 Unit 4 Link:

https://developer.android.com/courses/android-basics-compose/unit-4

## 📝 NOTES:

It’s time to learn the best practices of app architecture to build more complex apps. We’ll enhance your users’ ability to navigate across, into and back out from the various screens within your app for a consistent and predictable user experience. 

We have 3 pathway for this unit, with an interactive coding portion as follows:

- Architecture components. We’ll learn:
    - The different stages of activity lifecycle
    - How to handle state in the UI layer of your app using `ViewModels`, `UI state` and `StateFlow`.
    - How to write unit tests for the viewModel
- Navigation in jetpack compose**.** We’ll learn:
    - To create a `Nav Host` composable to define routes and screens in your app.
    - How to use `NavHostController` to navigate between screens
    - Pass data between different Composables.
- Adaptive layouts in compose. We’ll learn how to:
    - Create navigation between screens without Navigation Graph for simple apps
    - Create a custom back handler
    - Make your app work well in large screens(different form factors) with adaptive navigation UI patterns using `Window size classes`

### 💡 Tips for learners:

<aside>
👉🏽 You can lean a lot by reading other people’s codebases. Make it a habit. Check out these sample compose repositories: https://github.com/android/compose-samples

</aside>

## 🤔 Reflection Questions:

- How do unit tests contribute to the development process, and why are they particularly important in the context of Android app development for a game like Unscramble? How do they help ensure the accuracy of the app's functionality?
- In terms of recommended app architecture, why is it essential to have separate layers like the domain layer and the data layer? How does this architectural choice contribute to code organization and maintainability?
- How does understanding the lifecycle method "onPause()" impact your ability to manage app behavior when it loses focus? How might you utilize this knowledge in real-world Android app development?
- Reflecting on the module about saving values across configuration changes, why is it important to use the correct method, such as "MutableState{}" or "rememberSaveable{}," to preserve data? Can you think of scenarios where this knowledge could be crucial in your Android app projects?

## 📚 Additional resources:

- ****Jetpack Compose Navigation for Beginners - Android Studio Tutorial**** : https://youtu.be/4gUeyNkGE3g?si=yeXgb16N08iZo1q-
- ****Navigation Basics in Jetpack Compose:**** https://youtu.be/glyqjzkc4fk?si=3vDHTaR2LdQ4nBjq
- ****How to Support All Screen Sizes in Jetpack Compose:**** https://youtu.be/HmXgVBys7BU?si=OFENALsgPF7JxATC
- ****Android Support ALL Screen Sizes in Jetpack Compose (Landscape, Tablet) - Android Studio Tutorial:****https://youtu.be/NPmgnGFzopA?si=BzH72bFy6IgIQquW
- ****Multiple Screen Size Support with Jetpack Compose | Android Studio Tutorial :****https://youtu.be/NVrFiogpyr8?si=uws3aKpKKX4PV6aD
- ****Introduction - Jetpack Compose Clean Architecture News App:**** https://youtu.be/9AekfR-EI-U?si=FlBsU7xYaYQ8f_D4
- https://engineering.monstar-lab.com/en/post/2023/07/14/Jetpack-Compose-UI-Architecture/
- https://www.linkedin.com/pulse/building-compose-driven-architecture-android-circuit-getinrhythm/

## 👔  Interview Questions:

**Question:** **What are the benefits of using Jetpack Compose navigation?**

**Answer:** The benefits of using Jetpack Compose navigation include:

- It is declarative, which means that you can define your navigation graph in a way that is easy to read and understand.
- It is efficient, as it only loads the screens that are actually being used.
- It is flexible, as you can easily customize your navigation graph to meet your specific needs.

**Question:** **How to create a navigation graph in Jetpack Compose?**

**Answer:** To create a navigation graph in Jetpack Compose, you need to create a `NavigationHost` composable function. This function will be the root of your navigation graph. You can then add `NavigationDestination` composable functions to the `NavigationHost` function. Each `NavigationDestination` function represents a screen in your app.

**Question:** **How to navigate between screens in Jetpack Compose?**

**Answer:** To navigate between screens in Jetpack Compose, you can use the `navigate` composable function. The `navigate` function takes two arguments: the first argument is the name of the screen you want to navigate to, and the second argument is an optional set of arguments that you want to pass to the screen.

**Question:** **How to handle back button presses in Jetpack Compose?**

**Answer:** To handle back button presses in Jetpack Compose, you can use the `onBackPressed` composable function. The `onBackPressed` function takes a function as an argument. This function will be called when the back button is pressed.

**Question:** **What are the different types of navigation graphs in Jetpack Compose?**

**Answer:** There are two types of navigation graphs in Jetpack Compose: single activity graphs and multi-activity graphs.

- Single activity graphs are used when your app has a single activity. In this case, all of the screens in your app are part of the same navigation graph.
- Multi-activity graphs are used when your app has multiple activities. In this case, each activity has its own navigation graph.

**Question:** **What are the advantages and disadvantages of single activity graphs and multi-activity graphs?**

**Answer:** **The advantages of single activity graphs include:**

- They are simpler to manage.
- They are more efficient, as they only load the screens that are actually being used.

**The disadvantages of single activity graphs include:**

- They can be limiting, as you cannot have multiple activities running at the same time.

**The advantages of multi-activity graphs include:**

- They are more flexible, as you can have multiple activities running at the same time.
- They are more suitable for complex apps.

**The disadvantages of multi-activity graphs include:**

- They are more complex to manage.
- They are less efficient, as they can load screens that are not actually being used.

**Question: What are the benefits of using Clean Architecture in Jetpack Compose?**

**Answer:** The benefits of using Clean Architecture in Jetpack Compose include:

- Increased scalability and flexibility: The different layers of the application can be easily scaled and modified independently.
- Improved testability: Each layer of the application can be easily tested in isolation.
- Reduced coupling: The different layers of the application are loosely coupled, which makes it easier to maintain and evolve the application.
- Improved readability and maintainability: The different layers of the application are clearly separated, which makes it easier to understand and maintain the code.

**Question:** **What are the different layers of Clean Architecture?**

**Answer:** The different layers of Clean Architecture are:

- **The presentation layer:** This layer is responsible for displaying the UI and interacting with the user.
- **The domain layer:** This layer contains the business logic of the application.
- **The data layer:** This layer is responsible for accessing and storing data.
- **The infrastructure layer:** This layer provides the underlying implementation for the other layers.

**Question:** **How to implement Clean Architecture in Jetpack Compose?**

**Answer:** There are many different ways to implement Clean Architecture in Jetpack Compose. One common approach is to use the following packages:

- `@androidx.compose.runtime.Composable` functions: These functions are used to define the UI of the application.
- `@androidx.lifecycle.ViewModel` classes: These classes are used to store and manage the state of the application.
- `@dagger.hilt.InstallIn` annotations: These annotations are used to inject dependencies into the different layers of the application.

**Question:** **What are the challenges of implementing Clean Architecture in Jetpack Compose?**

**Answer:** The challenges of implementing Clean Architecture in Jetpack Compose include:

- It can be difficult to learn and understand.
- It can be more time-consuming to implement than other approaches.
- It can be difficult to debug and test.

**Question:** **What are some tips for implementing Clean Architecture in Jetpack Compose?**

**Answer:** Some tips for implementing Clean Architecture in Jetpack Compose include:

- Start by defining the different layers of the architecture.
- Use the right tools and libraries to implement the different layers.
- Test each layer of the application independently.
- Document the architecture of the application.
