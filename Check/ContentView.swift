//
//  ContentView.swift
//  Check
//
//  Created by 児玉拓海 on 2022/10/04.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationViewModel = LocationViewModel()
    
    var body: some View {
        switch locationViewModel.authorizationStatus {
        case .notDetermined:
            RequestLocationView()
                .environmentObject(locationViewModel)
        case .restricted:
            ErrorView(errorText: "位置情報の使用が制限されています。")
        case .denied:
            ErrorView(errorText: "位置情報を使用できません。")
        case .authorizedAlways, .authorizedWhenInUse:
            TrackingView()
                .environmentObject(locationViewModel)
        default:
            Text("Unexpected status")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
