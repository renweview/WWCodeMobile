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
                    DaysView()

                    // TODO: Add Task Reminder Row (with toggle) #118
                    // TODO: Add Show Badge Row (with toggle) #119
                    ReminderTimeView()
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
        }
        // TODO: Add navigation title to settings view #104
    }
}

private struct DaysView: View {
    let title: String = "Show Days"
    let days = Calendar.current.shortWeekdaySymbols
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
            HStack {
                ForEach(days, id: \.self) { day in
                    ZStack {
                        Circle()
                            .opacity(0.5)
                        Text(day.prefix(1))
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                }
            }
        }
    }
}

private struct ReminderTimeView: View {
    var body: some View {
        HStack{
            Text("Reminder Time")
            Spacer()
            Text("7:00 PM")
        }
    }
}

#Preview {
    SettingsView()
}
