import UIKit

class Dish {
    var name: String
    var isVegetarian: Bool
    
    init(name: String, isVegetarian: Bool) {
        self.name = name
        self.isVegetarian = isVegetarian
    }
    
    func printDescription() {
        if isVegetarian == true {
            print("\(name) is a vegetarian option.")
        }else {
            print("\(name) contains meat or other animal products")
        }
    }
}
//  |-------instance----------------------------------|
let dish1 = Dish(name: "Margherita Pizza", isVegetarian: false)
dish1.printDescription()

let hotDog = Dish(name: "hotDog", isVegetarian: false)
hotDog.printDescription()

// Example 2
// Define a class named 'DishOrder' with 2 properties: dishName and quantity
// Add a method that prints "you ordered X or Y".

class DishOrder {
    var dishName: String
    var quantity: Int
    
    init(dishName: String, quantity:Int) {
        self.dishName = dishName
        self.quantity = quantity
        
    }
    
    func summary() {
        print("You ordered \(quantity) \(dishName)")
    }
    
}

let order1 = DishOrder(dishName: "Spaguetti Bolognese", quantity: 3)
order1.summary()

let cornDog = DishOrder(dishName: "Corn Dog", quantity: 5)
cornDog.summary()

/**
 Mini-challenge
 
 Create a class 'Review' with:
 -reviewerName: String
 -rating: Int
 -create a method: printSummary() that prints: "Reviewer: \(name), Rating: \(rating)"
 */

class Review {
    var reviewerName: String
    var rating: Int
    
    init(reviewerName: String, rating: Int) {
        self.reviewerName = reviewerName
        self.rating = rating
    }
    
    func printSummary() {
        let stars = String(repeating: "⭐️", count: rating)
        print("Reviewer: \(reviewerName), Rating: \(stars)")
    }
}
let reviewer1 = Review(reviewerName: "Professor Leo", rating: 4)
reviewer1.printSummary()

let reviewer2 = Review(reviewerName: "Turbo Guy", rating: 5)
reviewer2.printSummary()
