//
//  MenuItem.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/12/25.
//

import Foundation

struct MenuItem: Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var price: Double
    var isVegetarian: Bool = false
}


