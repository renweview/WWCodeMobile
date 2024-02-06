//
//  ListView.swift
//  wwcTracker
//
//  Created by Claudia Maciel on 1/19/24.
//

import SwiftUI

struct ListView: View {
    let activities: [Activity] = [
        Activity(
            name: "walking 🚶",
            duration: "01:35:08"
        ),
        Activity(
            name: "finishing certifications",
            duration: "03:40:04"
        ),
        Activity(
            name: "setting up new dryer unit",
            duration: "01:20:21"
        ),
        Activity(
            name: "coding crunch time 😱",
            duration: "09:30:10"
        )
    ]
    var body: some View {
        List(activities) { activity in
            // TODO: Display list items in sections based on date #126

            ActivityItemView(name: activity.name, duration: activity.duration)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct Activity: Identifiable {
    let id = UUID()
    let name: String
    let duration: String
}

struct ActivityItemView: View {
    let name: String
    let duration: String

    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Text(duration)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 2)
        )
    }
}

#Preview {
    ListView()
}
