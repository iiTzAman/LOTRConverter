//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Aman Giri on 2024-04-03.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismissPage
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                IconGrid(currency: .copperPenny)
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                IconGrid(currency: .silverPenny)

                
                Button("Done"){
                    dismissPage()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title2)
                .padding()
                .foregroundColor(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}

