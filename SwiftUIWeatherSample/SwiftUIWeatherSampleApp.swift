//
//  SwiftUIWeatherSampleApp.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/22.
//

import SwiftUI

@main
struct SwiftUIWeatherSampleApp: App {
    let service = WeatherService()
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
                .environmentObject(service)
        }
    }
}
