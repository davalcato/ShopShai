//
//  DrinkItem.swift
//  ShopShai
//
//  Created by Daval Cato on 3/19/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI


struct DrinkItem: View {
    
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(drink.imageName)
                .resizable()
                // Render mode to see the image thru out the heirarchy
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 370)
                .cornerRadius(10)
                .shadow(radius: 10)
            // This name of the photo is here
            Text(drink.name)
                .foregroundColor(.primary)
                .font(.headline)
           
            
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
