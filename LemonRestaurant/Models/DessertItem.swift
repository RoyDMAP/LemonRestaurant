//
//  DessertItem.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/14/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
    var isVegetarian: Bool 
}
