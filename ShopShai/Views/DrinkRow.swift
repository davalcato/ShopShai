//
//  DrinkRow.swift
//  ShopShai
//
//  Created by Daval Cato on 3/19/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName:String
    var drinks:[Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
            .font(.title)
            
            // This has been deprecedate - showsHorizontalIndicator: false
            ScrollView(.horizontal, showsIndicators: false) {
               // Embedded in HStack to create the horizontal scrollview
                HStack(alignment: .top) {
                     // SwiftUI ForEach 'identified(by:)' is deprecated. Use ForEach(drinks, id: \.self) or List(_:id:)
                    ForEach (drinks, id: \.self) { drink in
                        NavigationLink(destination: DrinkDetail(drink: drink))
                        {
                        DrinkItem(drink: drink)
                        .frame(width: 300)
                        .padding(.trailing, 30)
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "SPRING WEAR", drinks: drinkData)
    }
}
