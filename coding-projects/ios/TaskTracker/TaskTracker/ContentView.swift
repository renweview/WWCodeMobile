//
//  ContentView.swift
//  TaskTracker
//
//  Created by Claudia Maciel on 1/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
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
    }
}

#Preview {
    ContentView()
}
