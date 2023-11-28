//
//  ExitButtonView.swift
//  Vorsleker
//
//  Created by Marius Bækken on 28/11/2023.
//

import SwiftUI

struct ExitButtonView: View {
    var body: some View {
        HStack {
            NavigationLink {
                ContentView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                Image(systemName: "multiply")
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

#Preview {
    ExitButtonView()
}
