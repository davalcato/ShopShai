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
                    VStack(alignment: .leading, spacing: 8){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                    }
                    // The spacer causes the title of the photo to moe to the left
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            Text(drink.description)
        }
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
