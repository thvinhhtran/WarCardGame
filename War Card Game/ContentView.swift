//
//  ContentView.swift
//  War Card Game
//
//  Created by Vinh on 25/10/24.
//

import SwiftUI

struct ContentView: View {
   @State var playercard = "card7"
    @State var cpucard = "card13"
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
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                Button  {
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
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
            }
        }
    }
    func deal(){
        // Randomize the player Card
        var playercardvalue = Int.random(in: 2...14)
        playercard = "card" + String(playercard)
        // Randomize CPU Card
        var cpucardvalue = Int.random(in: 2...14)
        cpucard = "card" + String(cpucardvalue)
        // Update the scores
        if playercardvalue > cpucardvalue {
            // Add 1 to player score
            playerScore += 1
        }
        else  if cpucardvalue > playercardvalue {
            // Add 1 to cpu score
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
