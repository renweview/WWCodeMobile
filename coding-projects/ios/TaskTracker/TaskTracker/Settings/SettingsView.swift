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
                // TODO: Add Section Header: Info and Feedback #105
                // TODO: Add version number footer #122
                Section {
                    // TODO: Add About us row #109
                    // TODO: Add Privacy Policy row #110
                    // TODO: Add Tutorial row #111
                    // TODO: Add Rate App row #112
                    // TODO: Add follow us on twitter row #113
                }

                // TODO: Add Section Header: Notifications #106
                Section {
                    // TODO: Add Days with Day bubbles #120
                    // TODO: Add Task Reminder Row (with toggle) #118
                    // TODO: Add Show Badge Row (with toggle) #119
                    // TODO: Add Reminder Time #121
                }

                // TODO: Add Section Header: What's New #107
                Section {
                    // TODO: Add version 1.0 row #114
                    // TODO: Add vote on future requests row #115
                }

                // TODO: Add Section Header: Appearance #108
                Section {
                    // TODO: Add App Theme Row #116
                    // TODO: App Icon #117
                }

            }
            .navigationBarTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
