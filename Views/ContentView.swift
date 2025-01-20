//
//  ContentView.swift
//  WeatherApp
//
//  Created by Innovative Sharks on 19.01.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var weahterManager = WeatherManager()
    
    @State var weather: ResponseBody?
    
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location{
                if let weather = weather{
                    WeatherView(weather: weather)
                }else{
                    LoadingView()
                        .task{
                            do{
                                weather = try await weahterManager.getCurrentWeather(latitude: location.latitude, longitude:location.longitude)
                            }catch{
                                print("Error getting weahter : \(error)")
                            }
                        }
                }
            }else{
                if locationManager.isLoading{
                    LoadingView()
                }else{
                    WelcomeView()
                         .environmentObject(locationManager)
                }
            }
          
        }
        .background(Color(hue: 0.711, saturation: 0.888, brightness: 0.398))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
