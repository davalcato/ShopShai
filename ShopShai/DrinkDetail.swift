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
        Image(drink.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        
        
        
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
