//
//  CurrencyInformation.swift
//  LOTRConverter
//
//  Created by Aman Giri on 2024-04-03.
//

import SwiftUI

struct CurrencyInformation: View {
    
    @Environment(\.dismiss) var dismissPage
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                CurrencyRates(leftImage: .goldpiece, rightImage: .goldpenny, conversionText: "1 Gold Piece = 4 Gold Pennies")
                CurrencyRates(leftImage: .goldpenny, rightImage: .silverpiece, conversionText: "1 Gold Penny = 4 Silver Pieces")
                CurrencyRates(leftImage: .silverpiece, rightImage: .silverpenny, conversionText: "1 Silver Piece = 4 Silver Pennies")
                CurrencyRates(leftImage: .silverpenny, rightImage: .copperpenny, conversionText: "1 Silver Penny = 100 Copper Pennies")
                
                Button("Done"){
                    dismissPage()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title2)
                .padding()
                .foregroundColor(.white)
            }
        }
        .foregroundColor(.black)
    }
}

#Preview {
    CurrencyInformation()
}


