//
//  SunsetSunriseModel.swift
//  SunsetSunrise
//
//  Created by Monika Gorkani on 8/3/23.
//

import Foundation

struct SunsetSunriseModel: Codable {
    let results: Info
}

struct Info: Codable, Hashable {
    let sunrise: String
    let sunset: String
}
