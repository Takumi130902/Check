//
//  ErrorView.swift
//  Check
//
//  Created by 児玉拓海 on 2022/10/04.
//

import Foundation
import SwiftUI

struct ErrorView: View {
    var errorText: String
    
    var body: some View {
        Text(errorText)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(errorText: "エラーメッセージ")
    }
}
