import UIKit

// SWITCH

/*
 |------------- SYNTAX -------------|
 
 switch value {
    case pattern1:
        Code to run if value matches pattern1
    case pattern2:
        Code to run if values matches pattern2
    default:
        Code to run if no cases match
}
 
*/

let position = 2

switch position {
case 1:
    print("You are first!")
    
case 2:
    print("You are second!")
    
case 3:
    print("You are third!")
    
default:
    print("You place \(position)")
}

// |----- Example 2 -----|
// Matching multiple values
let grade = "B"

switch grade {
case "A", "A+":
    print("Excellent!")
    
case "B", "B+":
    print("Good job!")
    
case "C":
    print("You passed")
    
default:
    print("try again")
}

// |----- Example 3 -----|
// Using range
let score = 99

switch score {
case 90...100:
    print("Grade: A")
    
case 80..<90:
    print("Grade: B")
    
case 70..<80:
    print("Grade: C")
    
default:
    print("Grade: F")
}

let name = "ROY"
print(name)

print(name.lowercased())
