//
//  MainView.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            WeatherContentView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
