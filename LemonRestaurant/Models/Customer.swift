//
//  Customer.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/16/25.
//

import Foundation
/*
class Customer {
    var name: String
    var email: String
    var favoriteDishes: String
    
    init(name:String, email:String, favoriteDish:String){
        self.name = name
        self.email = email
        self.favoriteDishes = favoriteDish
    }
}
*/

struct Customer {
    var name:String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]
    
    func customerSummary() -> String {
        let loyalty = isLoyaltyMember  ? "Is Loyalty Member" : "Is not a loyalty member"
        let dishes = favoriteDishes.joined(separator: ", ")
        return "\(name) \(loyalty). Favorite Dishes: \(dishes)."
    }

}
