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
                // TODO: Add version number footer #122
                Section {
                    AboutUsView()
                    // TODO: Add Privacy Policy row #110
                    // TODO: Add Tutorial row #111
                    RateAppView()
                    
                    
                    // TODO: Add follow us on twitter row #113
                } header: {
                    Label("Info & Feedback", systemImage: "info.bubble.fill")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }

                Section {
                    
                } header: {
                    Label("Notifications", systemImage:
                        "bell.fill")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                
                Section {
                    DaysView()

                    // TODO: Add Task Reminder Row (with toggle) #118
                    // TODO: Add Show Badge Row (with toggle) #119
                    ReminderTimeView()
                }

                Section {
                    // TODO: Add version 1.0 row #114
                    // TODO: Add vote on future requests row #115
                } header: {
                    Label("What's New", systemImage: "wand.and.stars")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }

                // TODO: Add Section Header: Appearance #108
                Section {
                    ThemeView()
                    // TODO: App Icon #117
                }

            }
            .navigationBarTitle("Settings")
        }
    }
}

private struct AboutUsView: View {
    
    var body: some View {
        HStack{
            Image(systemName: "info.circle.fill")
                .foregroundColor(.purple)
                .font(Font.body.weight(.regular))
                .imageScale(.large)
            Text("About Us")
            Spacer()
            Image(systemName: "chevron.right")
        }
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

private struct RateAppView: View {
    
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(.purple)
                .font(Font.body.weight(.regular))
                .imageScale(.large)
            Text("Rate app")
            Spacer()
            Image(systemName: "chevron.right")
        }
    }
}


private struct ThemeView: View {
    var body: some View {
        HStack {
            Image(systemName: "paintbrush")
                .foregroundColor(.purple)
                .font(Font.body.weight(.regular))
                .imageScale(.large)
            Text("App Theme")
            Spacer()
            Image(systemName: "chevron.right")
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


