//
//  CurrentWeatherView.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/24.
//

import SwiftUI

struct CurrentWeatherView: View {
    let model: CurrentWeather?

    var body: some View {
        
        VStack(alignment: .leading) {
            if let model = model {
                HStack {
                    Image(systemName: model.icon)
                        .symbolRenderingMode(.multicolor)
                    Text(model.weather)
                }
                .font(.largeTitle)
                
                HStack(spacing: 20) {
                    Label(model.maxTemperature, systemImage: "arrow.up")
                    Label(model.minTemperature, systemImage: "arrow.down")
                }
                
                HStack(alignment: .lastTextBaseline) {
                    Text(model.temperature)
                        .font(.system(size: 120))
                        .fontWeight(.ultraLight)
                    .minimumScaleFactor(0.5)
                    
                    HStack {
                        Image(systemName: "sunrise.fill")
                            .symbolRenderingMode(.multicolor)
                        Text(model.sunrise)
                        
                        Image(systemName: "sunrise.fill")
                            .symbolRenderingMode(.multicolor)
                        Text(model.sunset)
                    }
                    .font(.caption)
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(model: .preview)
    }
}
