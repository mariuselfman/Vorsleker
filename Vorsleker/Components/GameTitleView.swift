//
//  GameTitleView.swift
//  Vorsleker
//
//  Created by Marius Bækken on 28/11/2023.
//

import SwiftUI

struct GameTitleView: View {
    let gameTitle: String
    
    var body: some View {
        VStack {
            Text(gameTitle)
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: UIScreen.main.bounds.width - 32, height: 65)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
        }
        .padding(.top, 50)
        .padding(.bottom, 175)
        
    }
}

#Preview {
    GameTitleView(gameTitle: "Tittel")
}
