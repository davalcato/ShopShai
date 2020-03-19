//
//  Data.swift
//  ShopShai
//
//  Created by Daval Cato on 3/14/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import Foundation

let drinkData:[Drink] = load("drinks.json")


func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) in main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) in main bundle:\n\(error)")
    }
}






