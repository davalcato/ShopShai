//
//  Drink.swift
//  ShopShai
//
//  Created by Daval Cato on 3/19/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    // Simple data model used to populate the UI
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "Midnight"
        case cold = "summer"
        
        
    }
    
}
