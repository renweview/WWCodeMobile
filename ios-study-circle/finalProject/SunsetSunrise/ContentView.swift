//
//  ContentView.swift
//  SunsetSunrise
//
//  Created by Monika Gorkani on 8/3/23.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var viewModel = SunsetSunriseViewModel()
   
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading) {

                Image("sunset_sunrise")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.8)
                Text("Sunset: ") + Text(viewModel.sunsetTime)
                Text("Sunrise: ") + Text(viewModel.sunriseTime)
                Spacer()
            }
            .task {
                await viewModel.getTimes()
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
