# Unit 6

# 📚Resources for **Android Basics in Kotlin: Unit 6**

### 🔗 Unit 6 Link:

 [https://developer.android.com/courses/android-basics-kotlin/unit-6](https://developer.android.com/courses/android-basics-kotlin/unit-6)

## 📝 NOTES:

Use Android Jetpack’s WorkManager API to schedule necessary background work, like backing up data, that keeps running even if the app exits or the device restarts.

We have 1 pathway for this unit, with an interactive coding portion as follows:

- Learn when and how to use WorkManager, an API that handles background work that needs to run regardless of whether the application process is still running. Learn to use WorkManager to write a simple job, then perform more complex chained jobs with constraints.

### 💡 Tips for learners:

<aside>
👉🏽 Build a new app for your portfolio and include most if not all technologies we have learnt in the past few weeks, including WorkManager. Remember to add a detailed readme file to your repo and share the repo on slack.

</aside>

## 🤔 Reflection Questions:

1.  How can you test the app's behavior when the device is not charging?
2. How would you implement unit tests and integration tests for this app, and what tools or frameworks would you use to do so?
3. How would you handle errors or exceptions that might occur during the background work performed by the app's WorkManager?
4. What other constraints, besides setRequiresCharging(), could be added to the WorkRequest to further optimize the app's behavior and performance?

## 📚 Additional resources:

- [https://youtu.be/Psc2xyutE2U](https://youtu.be/Psc2xyutE2U)
- [https://medium.com/androiddevelopers/introducing-workmanager-2083bcfc4712](https://medium.com/androiddevelopers/introducing-workmanager-2083bcfc4712)
- [https://flexiple.com/android/android-workmanager-tutorial-getting-started/](https://flexiple.com/android/android-workmanager-tutorial-getting-started/)
- [http://mobologicplus.com/android-jetpack-workmanager-for-background-services/](http://mobologicplus.com/android-jetpack-workmanager-for-background-services/)

## 👔  Interview Questions:

- When to use WorkManager
- What is a worker?
- What is a work request?
- What is chain of work?
- How to get work status?
- Can you cancel work?
- How I can restrict a task to be done only when the phone is charging or in a particular state?
- Can I restrict only one work to be done at a time?
