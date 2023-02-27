//
//  ErrorView.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/27.
//

import SwiftUI

struct ErrorView: View {
    
    @EnvironmentObject var service: WeatherService
    
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.circle")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            if let error = service.lastError {
                Text(error)
                    .padding()
                    .foregroundColor(.white)
            }
            
            Button {
                service.lastError = nil
                service.fetch()
            } label: {
                Text("다시 요청")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
            .environmentObject(WeatherService.preview)
    }
}
