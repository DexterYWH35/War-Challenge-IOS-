//
//  ContentView.swift
//  War-Challenge
//
//  Created by Dexter Yap on 13/02/2022.
//

import SwiftUI


struct ContentView: View {
    //Global references (we need wrappers to modify the data)
    @State var playerCard: String = "card5"
    @State var cpuCard: String = "card4"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    //Properties
    var body: some View {
    
    //View Code
        ZStack {
            Image("background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //deal button
                Button(action: {
                    //Generate new cards
                    let playerNum = Int.random(in: 2...14)
                    let cpuNum = Int.random(in: 2...14)
                    
                    //Print new cards
                    playerCard = "card" + String(playerNum)
                    cpuCard = "card\(cpuNum)"
                    
                    //Statement
                    if (playerNum > cpuNum){
                        playerScore += 1
                    }else if (cpuNum > playerNum){
                        cpuScore += 1
                    }else {
                        print("draw")
                    }
                },
                       
                       
                       label: {
                    Image("dealbutton")
                })

                Spacer()
                VStack{
                    
                    HStack {
                        Spacer()
                        VStack {
                            Text("Player")
                                .font(.headline)
                                .foregroundColor(Color.white)
                            Text(String(playerScore))
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        VStack {
                            Text("CPU")
                                .font(.headline)
                                .foregroundColor(Color.white)
                            Text(String(cpuScore))
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        }
                }
                Spacer()
            }
        }
        
        //Methods
        
        
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
