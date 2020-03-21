//
//  ContentView.swift
//  ShopShai
//
//  Created by Daval Cato on 3/19/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories:[String:[Drink]] {
        .init(
            grouping: drinkData, by: {$0.category.rawValue}
        )
        
    }
    
    var body: some View {
        // This is where all the action happens
        NavigationView{
            List (categories.keys.sorted(), id: \.self) { key in
                DrinkRow(categoryName: "\(key) Style".uppercased(), drinks: self.categories[key]!)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}