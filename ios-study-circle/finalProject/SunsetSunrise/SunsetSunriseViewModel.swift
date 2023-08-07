//
//  SunsetSunriseViewModel.swift
//  SunsetSunrise
//
//  Created by Monika Gorkani on 8/3/23.
//

import Foundation
import AsyncLocationKit

enum SunsetSunriseFetcherError: Error {
        case invalidURL
    }

class SunsetSunriseViewModel: ObservableObject {
    @Published var sunsetTime: String = ""
    @Published var sunriseTime: String = ""
    let localISOFormatter = ISO8601DateFormatter()
    let asyncLocationManager = AsyncLocationManager(desiredAccuracy: .bestAccuracy)
    init() {
        localISOFormatter.timeZone = TimeZone.current
    }
    
    @MainActor
    func getTimes() async {
        _  = await self.asyncLocationManager.requestPermission(with: .whenInUsage)
        do {
            let location = try await self.asyncLocationManager.requestLocation()
            switch location {
            case .didUpdateLocations(let locations):
                if let location = locations.first {
                    if let info = try? await Self.fetchSunsetSunriseTimes(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude) {
                        if let sunsetDate = localISOFormatter.date(from: info.sunset), let sunriseDate = localISOFormatter.date(from: info.sunrise) {
                            sunsetTime = sunsetDate.formatted()
                            sunriseTime = sunriseDate.formatted()
                        }
                    }
                }
                
            default:
                print( "Something went wrong when fetching location")
            }
            
        }
        catch {
            
        }
    }
    
    static func fetchSunsetSunriseTimes(latitude: Double, longitude: Double) async throws -> Info {

        guard let url = URL(string: "https://api.sunrise-sunset.org/json?lat=\(latitude)&lng=\(longitude)&formatted=0") else {
            throw SunsetSunriseFetcherError.invalidURL
        }

        // Use the async variant of URLSession to fetch data
        // Code might suspend here
        let (data, _) = try await URLSession.shared.data(from: url)

        // Parse the JSON data
        let output = try JSONDecoder().decode(SunsetSunriseModel.self, from: data)
        return output.results
    }
    
    
}
