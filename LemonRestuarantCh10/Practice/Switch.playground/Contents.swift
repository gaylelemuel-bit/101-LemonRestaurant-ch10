import UIKit

/*
 ----- SWITCH ------
 Lets you compare one value against multiple possible cases and run different code depending on which case matches. It's used when you want to check many conditions in a clean, organized way
 
 
 -- Syntax --
 switch value {
 case pattern1:
    // code to run if value matches pattern1
 case pattern2:
    // code to run if value matches pattern2
 default:
    // Code to run if no cases match
 }
 
 */

print("-- SWITCH --")

print("\n-- Number (Int) --")

let number = 2

switch number {
case 1:
    print("One")
case 2:
    print("Two")
default:
    print("Other")
}


print("\n-- Number (Int)")
let position = 8

switch position {
case 1:
    print("You are first 🥇")
case 2:
    print("You came second 🥈")
case 3:
    print("you came third 🥉")
default:
    print("You placed \(position)")
}


print("\n-- Text(String), Matching multiple values --")

let grade = "b"

switch grade {
case "A", "A+":
    print("Excellent!")
case "B", "B+":
    print("Good Job")
case "C":
    print("You passed")
default:
    print("Try again.")
}

//let name = "LEO"
//print(name)
//print(name.lowercased())

print("\n-- Numbers(Int), using range --")

let score = 84

switch score {
case 90...100:
    print("Grade A")
case 80..<90:
    print("Grade B")
case 70..<80:
    print("Grade C")
default:
    print("Grade F")
}


print("\n-- Boolean (Bool) --")

let isVip = true

switch isVip {
case true:
    print("Welcome VIP!")
case false:
    print("Standard guest")
}


/*
 -- Mini-Challenge 1 --

 Create a variable called temperature.
 Use a switch to print:
    "Cold" for (0-59)
    "Warm" for (60-79)
    "Hot" for (80-100)
    "Out of range" for anything else
*/



// Assignment

