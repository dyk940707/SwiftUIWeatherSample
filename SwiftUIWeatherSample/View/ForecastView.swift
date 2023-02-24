//
//  ForecastView.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/24.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        Color.green
            .frame(height: 1000)
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
            .preferredColorScheme(.dark)
    }
}
