//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Aman Giri on 2024-04-03.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currencyImage: ImageResource
    let currencyLabel: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            Text(currencyLabel)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown)
        }
        .padding(5)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyLabel: "Copper Penny")
}
