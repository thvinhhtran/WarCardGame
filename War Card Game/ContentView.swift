//
//  ContentView.swift
//  War Card Game
//
//  Created by Vinh on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var playercard = "card7"
    var cpucard = "card13"
    var playerScore = 0
    var cpuScore = 0
    
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
        print("Deal Cards")
    }
}

#Preview {
    ContentView()
}
