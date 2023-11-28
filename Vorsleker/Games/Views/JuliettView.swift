//
//  JuliettView.swift
//  Vorsleker
//
//  Created by Marius Bækken on 28/11/2023.
//

import SwiftUI

struct JuliettView: View {
    @State var content = "Trykk på skjermen for å starte!"
    @State var current = -1
    
    func nextCurrent() {
        current += 1
        
        if current >= juliettData.count {
            current = 0
        }
        
        content = juliettData[current]
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                // background
                BackgroundView(bgColor: "color-red")
                
                VStack {
                    // header
                    HStack {
                        ExitButtonView()
                        
                        InfoButtonView(alertTitle: "Jeg har aldri", alertBtn: "Ok", alertText: "De som faktisk har gjort det som ble nevnt, tar en slurk av drinken sin.")
                    }
                    
                    // game title
                    GameTitleView(gameTitle: "👀 Jeg har aldri")
                    
                    VStack {
                        // questions
                        Text(content)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    
                }
                .padding()
                
            }
            .onTapGesture {
                /*var tmp: String
                repeat {
                    tmp = juliettData.randomElement() ?? self.content
                } while tmp == self.content
                self.content = tmp*/
                
                nextCurrent()
                
            }
        }
    }
}

#Preview {
    JuliettView()
}
