//
//  BackgroundView.swift
//  SwiftUIWeatherSample
//
//  Created by 김도윤 on 2023/02/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        GeometryReader { reader in
            Image("bkg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay {
                    Color.black.opacity(0.5)
                        .ignoresSafeArea()
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
