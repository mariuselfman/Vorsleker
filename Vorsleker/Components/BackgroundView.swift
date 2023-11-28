//
//  BackgroundView.swift
//  Vorsleker
//
//  Created by Marius Bækken on 28/11/2023.
//

import SwiftUI

struct BackgroundView: View {
    let bgColor: String
    
    var body: some View {
        Color(bgColor)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(bgColor: "bg")
}
