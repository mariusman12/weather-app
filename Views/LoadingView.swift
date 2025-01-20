//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Innovative Sharks on 19.01.2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
       ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint:.white))
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        
    }
}

#Preview {
    LoadingView()
}
