//
//  WeatherEntry.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/27.
//

import Foundation
import WidgetKit

struct WeatherEntry: TimelineEntry {
    let widgetData: WidgetData
    
    var date: Date {
        widgetData.date
    }
}
