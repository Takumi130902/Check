//
//  TrackingView.swift
//  Check
//
//  Created by 児玉拓海 on 2022/10/04.
//

import Foundation
import UIKit
import SwiftUI
import CoreLocation

struct TrackingView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel

    var body: some View {
        VStack {
            Text("経度：" + String(coordinate?.longitude ?? 0))
            Text("緯度：" + String(coordinate?.latitude ?? 0))
            Text("標高：" + String(altitude ?? 0))
        }
    }
    
    var coordinate: CLLocationCoordinate2D? {
        locationViewModel.lastSeenLocation?.coordinate
    }
    var altitude: CLLocationDistance? {
        locationViewModel.newLocation?.altitude
    }
}

struct TrackingVie_Previews: PreviewProvider {
    static var previews: some View {
        TrackingView()
            .environmentObject(LocationViewModel())
    }
}
