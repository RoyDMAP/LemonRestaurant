import UIKit

/**
 map() SYNTAX
 Option 1
 
 let newArray = originalArray.map {$0}
 
 */

let prices = [8.50, 12.00, 14.25]
let pricesWithTax = prices.map { $0 * 1.16 }
//let priceWithTax = prices.map {String(format: "%.4f", $0 * 1.16)}
print(pricesWithTax)
//

let numbers = [1, 2, 3]
let doubled = numbers.map { $0 * 2 }
print(numbers)
print(doubled)


let desserts = ["Cake", "Cookie", "Pie"]
let emojiMenu = desserts.map { "🍰 \($0)" }
print(emojiMenu)

/*
  |------------------- Reduce -------------------|
 Reduce is faster instead of inserting long SYNTAX
 */
let carPrices = [8.50, 12.00, 14.25]
let total = carPrices.reduce(0){$0 + $1}
print(carPrices)
print(total)

//Shortcut for reduce
let total2 = carPrices.reduce(0, +)
print(total2)
