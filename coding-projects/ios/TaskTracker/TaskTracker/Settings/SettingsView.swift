//
//  SettingsView.swift
//  TaskTracker
//
//  Created by Claudia Maciel on 1/27/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                // TODO: Add Section Header: Info and Feedback
                // TODO: Add version number footer
                Section {
                    // TODO: Add About us row
                    // TODO: Add Privacy Policy row
                    // TODO: Add Tutorial row
                    // TODO: Add Rate App row
                    // TODO: Add follow us on twitter row
                }

                // TODO: Add Section Header: Notifications
                Section {
                    // TODO: Add Days with Day bubbles
                    // TODO: Add Task Reminder Row (with toggle)
                    // TODO: Add Show Badge Row (with toggle)
                    // TODO: Add Reminder Time
                }

                // TODO: Add Section Header: What's New
                Section {
                    // TODO: Add version 1.0 row
                    // TODO: Add vote on future requests row
                }

                // TODO: Add Section Header: Appearance
                Section {
                    // TODO: Add App Theme Row
                    // TODO: App Icon
                }

            }
        }
        // TODO: Add navigation title to settings view
    }
}

#Preview {
    SettingsView()
}
