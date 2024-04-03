//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Aman Giri on 2024-04-03.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleViewButton = false
    @State var leftTextInput = ""
    @State var rightTextInput = ""
    
    var body: some View {
        ZStack{
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                //Banner Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                //Currency Exchange Text
                Text("Currency Converter")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                //Currency Conversion section
                HStack(){
                    //Left Conversion Section
                    VStack{
                        //Currency
                        HStack{
                            //Currency Image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        //Textfield
                        TextField("Amout", text: $leftTextInput)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)

                    }
                    //Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //Right Conversion Section
                    VStack{
                        //Currency
                        HStack{
                            //Currency Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        //Textfield
                        TextField("Amout", text: $rightTextInput)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                
                Spacer()
                
                //Info Button
                HStack {
                    Spacer()
                    Button {
                        toggleViewButton.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }                        
                    .padding(.trailing)
                }
                                
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}
