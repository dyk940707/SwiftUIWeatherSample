//
//  WeatherContentView.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/24.
//

import SwiftUI

struct WeatherContentView: View {
    var body: some View {
        VStack {
            Text("강남역")
                .font(.title2)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
            
            GeometryReader { reader in
                ScrollView(showsIndicators: false) {
                    VStack {
                        Color.red
                        
                        CurrentWeatherView()
                        
                    }
                    .frame(height: reader.size.height)
                    
                    Spacer(minLength: reader.safeAreaInsets.bottom)
                    
                    ForecastView()
                }
            }
        }
    }
}

struct WeatherContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherContentView()
            .preferredColorScheme(.dark)
    }
}
