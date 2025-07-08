import UIKit
// creating the function
func greet(person: String)->String{
    let greeting = "Hello, \(person)!"
    return greeting
}
//call the function
let message = greet(person: "Taylor")
print(message)

func greet2(person: String, formally: Bool = false)->String{
    if formally{
        return "Greetings, \(person)."
    }else{
        return "Hi, \(person)"
    }
    
}


print(greet2(person:"someone"))
print(greet2(person:"Dr. Murillo", formally: true))


func calculateTotal(price: Double, quantity: Int)->Double{
    return price * Double(quantity)
}

let total = calculateTotal(price: 99.9, quantity: 2)
print(total)


//Exercise 1
func deliveryTime(minutes: Int)->String {
    return "Ready in \(minutes) minutes"
}

print(deliveryTime(minutes: 30))
print(deliveryTime(minutes: 15))
print(deliveryTime(minutes: 5))

//Excercise 2
func taxCalculator(price: Double)->Double{
    return (price * 0.05) + price
}
print(taxCalculator(price: 100))
  

