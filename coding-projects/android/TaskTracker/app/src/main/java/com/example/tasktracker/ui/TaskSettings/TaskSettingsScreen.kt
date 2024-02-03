package com.example.tasktracker.ui.TaskSettings

import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TaskSettingsScreen() {
    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    // TODO - #155 - Add a header text, play with `fontSize` or `fontStyle`
                }
            )
        }
    ) { paddingValue ->
        Column(
            modifier = Modifier
                .padding(
                    top = paddingValue.calculateTopPadding(),
                    start = 12.dp,
                    end = 12.dp
                )
                .fillMaxSize(),
        ) {
            // TODO - #156 - Add a section header for info and feedback, play with `fontSize` or `fontStyle` in your Text composable
            Section {
                // TODO - #158 - Add an About Us row with an icon and a text
            }
            // TODO - #157 - Add a section header for appearance, play with `fontSize` or `fontStyle in your Text composable`
            Text(text = "This is the settings screen")
        }
    }
}

@Composable
fun Section(content: @Composable() (ColumnScope.() -> Unit)) {
    Column(
        Modifier
            .fillMaxWidth()
            .border(
                width = 2.dp,
                shape = RoundedCornerShape(5.dp),
                color = Color.Green)
            .padding(4.dp)
    ) {
         content()
    }
}