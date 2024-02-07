//
//  ListModel.swift
//  wwcTracker
//
//  Created by Claudia Maciel on 1/19/24.
//

import Foundation

struct Activity: Identifiable {
    let id = UUID()
    let name: String
    let duration: String
}
