import UIKit

// IF - ELSE-IF - ELSE
//*/
//|--- STYNTAX ---|
//if condition1 {
   // this block runs if condition1 is true
//}else if condition2 {
    //this block will be executed if condition2 is true
//}else {
     //this block will be executed
//}



//--example1--//
var guests:Int = 7
let capacity:Int = 10

if guests > capacity {
    print("Over capacity")
}else {
    print("We can seat this party!")
}

//---example--//
let rating = 4.2
if rating >= 4.5 {
    print("Execellent!")
}else if rating >= 4.0 {
    print("Good!")
}else {
    print("Not that great")
}

//---example3---//

let isOpen = true
let hasOutdoorSeating = true

if isOpen && hasOutdoorSeating {
    print("Open with outdoor seating")
}else if isOpen && !hasOutdoorSeating {
    print("Open indoor only.")
}else{
    print("Closed!")
}

//---example4---//
let useName = "Mike"
if useName == "Ken"{
    print("Welcome, Ken")
}else {
    print("Unkown user")
}

//---example5---//
let price = 2.0
let label = price > 10 ? "Premiun" : "Regular"
print(label)


//---MiniChallange 1---//
let groupSize = 4
let children = true

if groupSize < 8  {
    print("the clients need to call the manager ")
}else if groupSize < 8 && children == true {
    print("Offer the kids menu")
}else{
    print("no children and less than 8 ")
}



//---MiniChallange 2---//
let userVip = true
let entry = userVip ? "Vip" : "Nope"
print(entry)
