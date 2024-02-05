//
//  ContentView.swift
//  TaskTracker
//
//  Created by Claudia Maciel on 1/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                Spacer()
                HeaderView()
                List {
                    // TODO: Add list items that show activity name and time of activity #125
                    // TODO: Display list items in sections based on date #126
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        ScreenTitleView()
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        AddButtonView()
                    }
                }
        }
    }
}

private struct HeaderView: View {
    var body: some View {
        Text("Your Activity")
            .font(.headline)
            .padding(.leading, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

private struct ScreenTitleView: View {
    var body: some View {
        Text("Timer")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

private struct AddButtonView: View {
    var body: some View {
        Button(action: {
            // TODO: Link + button to Detail/Add/Edit screen #127
        }, label: {
            Image(systemName: "plus.circle.fill")
                .foregroundColor(Color.green)
                .font(Font.body.weight(.black))
        })
    }
}

#Preview {
    ContentView()
}
