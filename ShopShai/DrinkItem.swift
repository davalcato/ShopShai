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
        Image(drink.imageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
