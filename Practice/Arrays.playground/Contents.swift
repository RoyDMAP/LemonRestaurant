import UIKit


func lineBreak() {
    print("\n-----------")
}

var dishes = ["Pizza", "Pasta", "Soup"]
print(dishes[2])
print(dishes.count)
lineBreak()

var prices = [9.99, 10.50, 6.00]
let total = prices[0] + prices[1]
print(String(format: "%.2f", total))
lineBreak()

let desserts = ["Cake", "Ice cream", "Tiramisu"]
for dessert in desserts {
    print(dessert)
}

// forEach
/*
 FOREACH SYTAX
 
 collection.forEach { element in
 //do something with that element
 }
 */
desserts.forEach { dessert in
    print(dessert)
}

lineBreak()

let drinks = ["Water", "Tea", "Coke"]
for drink in drinks {
    print("This is my favorite drink: \(drink)")
}

drinks.forEach { drink in
    print(drink)
}

let calories = [0, 100, 200]
for calorie in calories {
    if calorie > 100 {
        print("High calorie \(calorie)")
    }
}

calories.forEach { calorie in
    if calorie > 100{
        print("High calorie \(calorie)")
    }
}
lineBreak()

//string methods
let meals = ["Salad", "Burger", "Pasta"]

for meal in meals {
    if meal.contains("a"){
        print("Meal with 'a' \(meal)")
    }
}

meals.forEach { meal in
    if meal.contains("a") {
        print ("Meal with 'a' \(meal)")
    }
}
