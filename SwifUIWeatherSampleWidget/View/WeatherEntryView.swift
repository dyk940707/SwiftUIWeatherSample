//
//  WeatherEntryView.swift
//  SwifUIWeatherSampleWidgetExtension
//
//  Created by 김도윤 on 2023/02/27.
//

import SwiftUI
import WidgetKit

struct WeatherEntryView: View {
    var entry: Provider.Entry
    var body: some View {
        ZStack {
            LinearGradient(colors:
                            [Color(red: 4/255, green: 7/255, blue: 24/255),
                           Color(red: 39/255, green: 54/255, blue: 80/255)],
                           startPoint: .topTrailing, endPoint: .bottomLeading)
            
            VStack(alignment: .leading) {
                Text(entry.widgetData.location)
                
                Text(entry.widgetData.temprature)
                    .font(.largeTitle)
                
                Spacer()
                
                Image(systemName: entry.widgetData.icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.subheadline)
                
                Text(entry.widgetData.weather)
                    .font(.subheadline)
                
                Text("최고: \(entry.widgetData.maxTemperature) 최저: \(entry.widgetData.minTemperature)")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct WeatherEntryView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherEntryView(entry: Provider.Entry(widgetData: .preview))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
