import UIKit


//var - variable
//let - constants

let day = "Monday"
let dailyTemperature = 75
print("Today is \(day) and the temperature is \(dailyTemperature) °F")
var temperature = 70
print("The temperature in the morning was \(temperature) °F")
temperature = 80
print("The tempereature in the noon was \(temperature) °F")
temperature = dailyTemperature
print("The temperature in the evening was \(temperature) °F")

print("The game score example")
let levelScore=1
var gameScore=0

gameScore+=levelScore

print("Your current score is \(gameScore)") //10
var levelBonusScore=20.0
print("Your bonus is \(levelBonusScore)")
let levelLowestScore=50
let levelHighestScore=99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore

print(levelScoreDifference)


// Swift datatypes

let dishname: String = "Pizza"
let price: Double = 12.99
let inStock: Bool = false
let quantity: Int = 0
