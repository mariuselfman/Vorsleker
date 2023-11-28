//
//  InfoButtonView.swift
//  Vorsleker
//
//  Created by Marius Bækken on 28/11/2023.
//

import SwiftUI

struct InfoButtonView: View {
    @State private var showInfo = false
    
    let alertTitle: String
    let alertBtn: String
    let alertText: String
    
    var body: some View {
        HStack {
            Button("?") {
                showInfo = true
            }
            .font(.system(size: 30))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .alert(alertTitle, isPresented: $showInfo) {
                Button(alertBtn) { }
            } message: {
                Text(alertText)
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        
    }
}

#Preview {
    InfoButtonView(alertTitle: "Tittel", alertBtn: "Ok", alertText: "Tekst")
}
