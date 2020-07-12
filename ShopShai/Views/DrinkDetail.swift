//
//  DrinkDetail.swift
//  ShopShai
//
//  Created by Daval Cato on 3/20/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink:Drink
    
    var body: some View {
        List{
            ZStack (alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    // Text is in a Vertical stack
                    VStack(alignment: .leading, spacing: 8){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                    }
                    // The spacer causes the title of the photo to move to the left
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            // This causes the photo to reach the end of both sides
                .listRowInsets(EdgeInsets())
            // VStack is added to create the bottom
            
            VStack(alignment: .leading) {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(5)
                
                HStack {
                    // These two spacer() put the "Order Item in the center"
                    Spacer()
                    OrderButton()
                    Spacer()
                 // This padding adds space between the OrderButton and the paragraph
                }.padding(.top, 60)
            }
        }
         // This fixed the OrderButton from falling to the bottom of the screen
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action: {}) {
        Text("Order Item")
        }.frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.blue)
            .cornerRadius(10)
    }
}



struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DrinkDetail(drink: drinkData[3])
                .previewDevice(/*@START_MENU_TOKEN@*/"iPhone 8"/*@END_MENU_TOKEN@*/)
    
            DrinkDetail(drink: drinkData[3])
                .previewDevice("iPhone 11")
        }
    }
}
