//
//  WidgetData.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/27.
//

import Foundation

struct WidgetData: Codable {
    let location: String
    let temprature: String
    let icon: String
    let weather: String
    let minTemperature: String
    let maxTemperature: String
    let date: Date
}

extension WidgetData {
    static let preview = WidgetData(location: "서울",
                                    temprature: Double.randomTemperatureString,
                                    icon: "sun.max.fill",
                                    weather: "맑음",
                                    minTemperature: Double.randomTemperatureString,
                                    maxTemperature: Double.randomTemperatureString,
                                    date: .now)
}
