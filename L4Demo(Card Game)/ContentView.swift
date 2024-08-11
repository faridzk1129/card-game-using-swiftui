//
//  ContentView.swift
//  L4Demo(Card Game)
//
//  Created by Farid on 02/02/24.
//
import SwiftUI
struct ContentView: View {
    @State var playerCard = "card13"
    @State var COMCard = "card12"
    @State var playerScore = 0
    @State var COMScore = 0
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                Spacer()
                HStack(spacing:40){
                    Image(playerCard)
                    Image(COMCard)
                }
                Spacer()
                Button{
                    deal()
        
                }label: {
                    Image("button")
                }
                Spacer()
                HStack(spacing:100){
                    VStack(spacing:20){
                        Text("PLAYER")
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    VStack(spacing:20){
                        Text("COM")
                        Text(String(COMScore))
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        var COMCardValue = Int.random(in: 2...14)
        COMCard = "card" + String(COMCardValue)
        
        if playerCardValue > COMCardValue {
            playerScore += 1
        }else if COMCardValue > playerCardValue{
            COMScore += 1
        }
    }
}
#Preview {
    ContentView()
}
