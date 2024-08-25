//
//  ContentView.swift
//  War Card Game
//
//  Created by Aakash Ambodkar on 8/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title)
                            
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }

        }
    }
    
    func deal() {
        // Randomize playerCard
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize cpuCard
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update Scores
        if playerCardValue > cpuCardValue {
            // Increment player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            // Increment cpu score
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
