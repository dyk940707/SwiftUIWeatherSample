//
//  CodableForecast.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/27.
//

import Foundation

struct CodableForecast: Codable {
    struct ListItem: Codable {
        let dt: Double
        
        struct Main: Codable {
            let temp: Double
            let temp_min: Double
            let temp_max: Double
        }
        
        let main: Main
        
        struct Weather: Codable {
            let description: String
            let icon: String
        }
        
        let weather: [Weather]
    }
    
    let list: [ListItem]
    
}
