//
//  CodableCurrentWeather.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/24.
//

import Foundation

struct CodableCurrentWeather: Codable {
    
    let dt: Double
    
    struct Weather: Codable {
        let description: String
        let icon: String
    }
    
    let weather: [Weather]
    
    struct Main: Codable {
        let temp: Double
        let temp_min: Double
        let temp_max: Double
    }
    
    let main: Main
    
    struct Sys: Codable {
        let sunrise: Double
        let sunset: Double
    }
    
    let sys: Sys
    
}
