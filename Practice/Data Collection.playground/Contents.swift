import UIKit

// ARRAYS
// Create an array of strings
//Example 1
let dishes = ["Pizza", "Pasta", "Salad"]
print(dishes[0]) //Pizza

//Example 2
var orders = [String]()
orders.append("Burger")
orders.append("Soup")

print(orders.count) // output = 2

//Challenge 1: Create an array with 4 dessers. Print the third dessert

let desserts = ["Cake", "Pie", "IceCream"]
print(desserts[2]) //desserts

// --- DICTIONARIES ---
// key-pair values

let menuPrices: [String: Double] = ["Pizza": 12.99, "Pasta": 11.99, "Salad": 9.99]
print(menuPrices["Pizza"]!) //output 12.99

//Example 2
var stock = ["Burgers":5, "Soup":6]

//update the value for soup
stock["Soup"] = 7
print(stock["Soup"]!)

// Challen1: Create a dictionary for 3 drinks and their prices.Print

var drinks = ["Coke":5, "Pepsi":6, "Fanta":7]
drinks["Fanta"] = 8
print(drinks["Fanta"]!)

// Challenge 2:
var ingredients = ["Tomato":2, "Cheese": 4]

//add an item to the dict
ingredients["Onion"] = 1
// print dict using for-in loop
for (_,item) in ingredients {
    print(item)
}

// print dishes array

for dish in dishes{
    print(dish)
}
// Challenge:Count how many dishes are above $8.00 using a loop
let prices2 = [5.99, 10.99, 12.00]
var count = 0

for price in prices2 {
    if price > 8.0 {
        count += 1
    }
}
print("Dishes above $8: \(count)")

// Filter Collections ---
let values = [12.0, 8.5, 5.0, 4.5, 14.99]
    
// Filter values over $10

//let premiu = values.filter{
//   prices in
// return prices  10
//}
//$0 the first item passed to the closure
//$1 the second
//$2 the third ... and so on
//shorthand
let premium = values.filter { $0 > 10 }

print(premium) //output [12.0,14.99]

// Example 2
let dishes2 = ["Burger", "Fries", "Fish"]

let filtered = dishes2.filter{ $0.hasPrefix("F")}
    print(filtered) // output ["Fries", "Fish"]

//Challenge 1: Filter an array of values and print only those below 10.
let cheap = values.filter {$0 < 10}
print(cheap)
    
let menu = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]
    // Filter an array of dish names to find vegetarian options (hint: include keywords like "Salad" or "Veggie" contains()).
let vegetarian = menu.filter{ $0.contains("Salad") || $0.contains("Veggie") || $0.contains("Fruit")}
print(vegetarian)
    


