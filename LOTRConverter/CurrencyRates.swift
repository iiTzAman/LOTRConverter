//
//  CurrencyRates.swift
//  LOTRConverter
//
//  Created by Aman Giri on 2024-04-03.
//

import SwiftUI

struct CurrencyRates: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let conversionText: String
    
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(conversionText)
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    CurrencyRates(leftImage: .silverpenny, rightImage: .goldpenny, conversionText: "asdasd")
}
