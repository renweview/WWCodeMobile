package com.example.tasktracker.ui.TaskDetail

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.outlined.Delete
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedCard
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.tasktracker.R
import com.example.tasktracker.ui.theme.Green


/**
 * Created by Gauri Gadkari on 1/23/24.
 * Screen to display task details and add, edit or delete task
 * Developed compose UI by Liubov Sireneva on 1/29/24
 */
class TaskDetailScreen {
    @OptIn(ExperimentalMaterial3Api::class)
    @Composable
    fun TaskDetailScreen() {
        OutlinedCard(
            colors = CardDefaults.cardColors(
                containerColor = Color.White,
            ),
            border = BorderStroke(1.dp, Color.Black),
            modifier = Modifier
                .padding(horizontal = 16.dp, vertical = 16.dp)
                .wrapContentSize()
                .verticalScroll(rememberScrollState()),
            shape = RoundedCornerShape(30.dp)

        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                horizontalArrangement = Arrangement.End
            ) {
                Image(
                    painter = painterResource(id = R.drawable.outline_delete_24),
                    contentDescription = stringResource(id = R.string.delete),
                    modifier = Modifier.padding(horizontal = 8.dp)
                )

                Image(
                    painter = painterResource(id = R.drawable.baseline_cancel_24),
                    contentDescription = stringResource(id = R.string.cancel)
                )
            }

            LabelButtonRow(
                label = stringResource(id = R.string.date_label),
                buttonInfo = "JAN 29 2024"
            ) {}
            var textState by remember { mutableStateOf("") }

            TextField(
                value = textState,
                onValueChange = { textState = it },
                modifier = Modifier
                    .padding(16.dp)
                    .fillMaxWidth()
                    .sizeIn(minHeight = 100.dp)
                    .border(1.dp, Color.Gray, RoundedCornerShape(5)),
                label = { Text(text = stringResource(id = R.string.textfield_label)) },
                maxLines = 20,
                colors = TextFieldDefaults.textFieldColors(
                    unfocusedLabelColor = Color.Gray,
                    cursorColor = Color.Gray,
                    focusedLabelColor = Color.Gray,
                    textColor = Color.Black,
                    containerColor = Color.White,
                    focusedIndicatorColor = Color.Black,
                    unfocusedIndicatorColor = Color.Gray
                ),
            )

            LabelButtonRow(
                label = stringResource(id = R.string.start_time_label),
                buttonInfo = "08:22:10"
            ) {}
            LabelButtonRow(
                label = stringResource(id = R.string.end_time_label),
                buttonInfo = "09:12:01"
            ) {}

            OutlinedButton(
                onClick = { },
                colors = ButtonDefaults.textButtonColors(
                    containerColor = Color.White, contentColor = Green
                ),
                border = BorderStroke(1.dp, Green),
                modifier = Modifier
                    .align(Alignment.CenterHorizontally)
                    .padding(top = 50.dp, bottom = 8.dp),
                contentPadding = PaddingValues(horizontal = 40.dp, vertical = 5.dp)
            ) {
                Text(text = stringResource(id = R.string.done))
            }
        }
    }

    @Composable
    fun LabelButtonRow(label: String, buttonInfo: String, onClick: () -> Unit) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(
                text = label,
                modifier = Modifier.align(Alignment.CenterVertically),
                fontSize = 14.sp,
                fontWeight = FontWeight.Bold
            )

            Button(
                modifier = Modifier.align(Alignment.CenterVertically),
                shape = RoundedCornerShape(5),
                onClick = onClick,
                colors = ButtonDefaults.textButtonColors(
                    containerColor = Green, contentColor = Color.White
                )
            ) {
                Text(text = buttonInfo, fontSize = 12.sp)
            }
        }
    }

    @Preview(showBackground = true)
    @Composable
    fun TaskDetailScreenPreview() {
        TaskDetailScreen()
    }
}
