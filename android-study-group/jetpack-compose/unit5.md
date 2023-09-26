# 📚Resources for **Android Basics with Compose: Unit 5**

### 🔗 Unit 5 Link:

https://developer.android.com/courses/android-basics-compose/unit-5

## 📝 NOTES:

Let’s connect our apps to the internet 💃

We’ll use Kotlin coroutines to perform multiple tasks at once, and learn about HTTP and REST to get data from the internet using Retrofit. Then use the Coil library to display images in your app.

We have 2 pathway for this unit, with an interactive coding portion as follows:

- Get data from the internet. We’ll learn:
    - Using coroutines in Android app lifecycle.
    - The principles of structured concurrency. Learn how to use `launch: Coroutine buider`  ****to call suspend functions from a non-suspend function.
    - How to write unit tests to test the coroutines.
    - How to use the `Retrofit` library to connect to a `REST` web service on the internet and get a response.
    - How to use the `Serialization (kotlinx.serialization)` library to parse the JSON response into a data object.
- Load images from the internet
    - Apply architecture best practices in the android data layer which usually has `repositories` and `Data sources`.
        - Learn how to implement the repository pattern
        - Use dependency injection to create a loosely coupled codebase.
    - Use Coil to download and display images and handle potential errors as the images download and display.

### 💡 Tips for learners:

<aside>
👉🏽 Learn how to use Hilt for dependency injection from this documentation: https://developer.android.com/training/dependency-injection/hilt-android

A good alternative for a Multiplatform client is Ktor. Check it out here: https://ktor.io/docs/create-client.html

</aside>

Reflection Questions: 

1. Differentiate between HTTP operations like GET, POST, and DELETE, and explain their relevance in web services.
2. What is Retrofit, and how does it simplify handling JSON from a web service? How does it integrate with coroutines?
3. Explain the significance of coroutine contexts, and when would you choose Dispatchers.Default, Dispatchers.Main, and Dispatchers.IO?
4. Why is it necessary to add the 'android.permission.INTERNET' permission in the AndroidManifest.xml file to enable internet connectivity in an Android app?
5. What is structured concurrency, and how does it help manage coroutines in an organized manner?

Interview Questions: 

- What are Coroutines?
- What are dispatchers? Explain their types.
- What are the HTTP Methods?
- What is the difference between PUT and POST?
- What is serialization?
- What is the @SerialName Annotation used for?
- What is the UDF pattern?
- What is dependency injection? And what are its benefits?
- What is the purpose of the repository in the MVVM pattern?
- How does a library like Coil or Glide help in displaying images in an Android app?

Additional Resources: 

- ****Retrieve data from Firestore using Jetpack Compose:**** https://www.youtube.com/watch?v=dqbV6bQnqkw
- ****API Calling Using Retrofit With Jetpack Compose (MVVM):**** https://www.youtube.com/watch?v=e2tvVJtfGQM
- ****API Calling Using Retrofit With Jetpack Compose (MVVM):**** https://www.youtube.com/watch?v=bLIWWOMVxts
- ****Retrofit Setup - MVVM with Recycler View in Jetpack Compos:**** https://www.youtube.com/watch?v=bIVGIEMgc7Q
- ****Asynchronously Load Images with Jetpack Compose :**** https://www.youtube.com/watch?v=ktOWiLx83bQ
