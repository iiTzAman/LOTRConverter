//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Aman Giri on 2024-04-04.
//

import SwiftUI

struct IconGrid: View {
    @State var currency: Currency

    var body: some View {
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], content: {
            ForEach(Currency.allCases){ currency in
                if self.currency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyLabel: currency.name)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyLabel: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        })
    }
}

#Preview {
    IconGrid(currency: .silverPenny)
}
