//
//  ListViewModel.swift
//  wwcTracker
//
//  Created by Claudia Maciel on 1/19/24.
//

import Foundation

class ListViewModel: ObservableObject {
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
}
