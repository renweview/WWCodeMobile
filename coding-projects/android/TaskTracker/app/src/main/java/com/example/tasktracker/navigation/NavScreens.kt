package com.example.tasktracker.navigation

sealed class NavScreens(val route:String) {
    object TaskList: NavScreens("List")
    object TaskSettings: NavScreens("Settings")
    object TaskDetail: NavScreens("Detail")
}