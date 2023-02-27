//
//  SwifUIWeatherSampleWidget.swift
//  SwifUIWeatherSampleWidget
//
//  Created by 김도윤 on 2023/02/27.
//

import WidgetKit
import SwiftUI


struct SwifUIWeatherSampleWidget: Widget {
    let kind: String = "SwifUIWeatherSampleWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WeatherEntryView(entry: entry)
        }
        .configurationDisplayName("날씨 위젯")
        .description("현재 날씨를 확인할 수 있어요 :)")
        .supportedFamilies([.systemSmall])
    }
}

struct SwifUIWeatherSampleWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherEntryView(entry: WeatherEntry(widgetData: .preview))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
