//
//  ContentView.swift
//  Vorsleker
//
//  Created by Marius Bækken on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // background
                BackgroundView(bgColor: "bg")
                
                VStack {
                    // header
                    VStack {
                        Text("Vorsleker".uppercased())
                            .font(.system(size: 40))
                            .foregroundColor(.black)
                            .fontWeight(.black)
                            .padding(.bottom, 5)
                        
                        Text("Velg et spill for å starte festen 🎉")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                    }
                    .padding(.top, 50)
                    
                    // game list
                    VStack(spacing: 25) {
                        NavigationLink {
                            // link
                        } label: {
                            Text("🤫 Sannhet eller drikk".uppercased())
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 85)
                        }
                        .background(Color("color-purple"))
                        .cornerRadius(5)
                        
                        NavigationLink {
                            // link
                        } label: {
                            Text("🫵 Pekeleken".uppercased())
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 85)
                        }
                        .background(Color("color-green"))
                        .cornerRadius(5)
                        
                        NavigationLink {
                            JuliettView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Text("👀 Jeg har aldri".uppercased())
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 85)
                        }
                        .background(Color("color-red"))
                        .cornerRadius(5)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
