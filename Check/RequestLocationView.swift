//
//  RequestLocationView.swift
//  Check
//
//  Created by 児玉拓海 on 2022/10/04.
//

import Foundation
import SwiftUI

struct RequestLocationView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel
    
    var body: some View {
        Button(action: {
            locationViewModel.requestPermission()
        }) {
            Text("位置情報の使用を許可する")
        }
    }
}

struct RequestLocationView_Previews: PreviewProvider {
    static var previews: some View {
        RequestLocationView().environmentObject(LocationViewModel())
    }
}
