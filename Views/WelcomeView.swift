//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Innovative Sharks on 19.01.2025.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing:20){
                Text("Welcome to the weahter app").bold().font(.title)
                
                Text("Please share your current location to get the weather in your area").padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
