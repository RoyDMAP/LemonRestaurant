import UIKit

// IF - ELSE IF - ELSE

// Var is a variable, Let is constant

/*
|------------- SYNTAX -------------|
 
 if condition1 {
    this block runs if condition1 is true
 } else if condition2
    this block runs if condition1 is false and condition2 is true
 } else {
    this block runs if nonne of the above conditions are true
 }
 */

// |------- Example 1 ------- |
var waterTemperature:Int = 30

if waterTemperature >= 100 {
    print("The water is boiling")
} else {
    print("The water is not boiling")
}

// |----- Example 2 -----|
var position = 1

if position == 1 {
    print("🥇 You came first")
} else if position == 2 {
    print("🥈 You came second")
} else if position == 3 {
    print("🥉 You came third")
} else {
    print("🏃🏽‍♂️ You fininshed in position \(position). Keep training!")
}

// |----- Example 3 -----|
var temperature = 70

if temperature >= 68 && temperature <= 75 {
    print("The temperature is just right")
} else {
    print("The temperature is too hot or cold")
}

// |----- Example 4 -----|
var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower == true || batteryPower == true {
    print("I can use my phone")
} else {
    print("You'd better find a charger")
}

/*
 |----- Minichallenge -----|
Show one message if user is VIP, and another if not.
*/

var isVip:Bool = false

if isVip == true {
    print ("You are VIP")
} else {
    print("You are not VIP")
}




