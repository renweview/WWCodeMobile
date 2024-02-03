package com.example.tasktracker.ui.TaskList

import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.res.painterResource
import androidx.navigation.compose.rememberNavController
import com.example.tasktracker.R

/**
 * Created by Gauri Gadkari on 1/23/24.
 */

@Composable
fun TaskListScreen(
    onNavigateToSettings: () -> Unit
) {
    IconButton(onClick = { onNavigateToSettings() }) {
        Icon(
            painterResource(id = R.drawable.baseline_settings_24),
            contentDescription = "Settings"
        )
    }
}