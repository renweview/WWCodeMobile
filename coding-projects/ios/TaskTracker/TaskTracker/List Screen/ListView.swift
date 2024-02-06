//
//  ListView.swift
//  wwcTracker
//
//  Created by Claudia Maciel on 1/19/24.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: ListViewModel

    var body: some View {
        List(viewModel.activities) { activity in
            // TODO: Display list items in sections based on date #126

            ActivityItemView(name: activity.name, duration: activity.duration)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
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
    ListView(viewModel: ListViewModel())
}
