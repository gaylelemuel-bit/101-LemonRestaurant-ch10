import UIKit

/*
 --- ARRAY STYNTAX---
 let/var arrayName = [value1,value2,value3]
 
 
 ---Dictionaries----
 let/var dictionaryName = [
 key: value1,
 key: value2,
 key: value3
 ]
 
 --- For-In loop syntax----
 for loopVariable in sequence {
 // cod to repeat
 }
 
 --- ForEach---
 sequence.forEach { item in
 //code to repeat
 }
 
 */


print("\n--- Array of Dictionaries ---")

print("\n--menuItems--")
let menuDishes = [
    ["name": "Pizza", "price": "12"],
    ["name": "Pasta", "price": "10"],
    ["name": "Salad", "price": "8"]
]

print("\n-- looping through menuDishes ---")
for dish in menuDishes {
    for (key, value) in dish {
        print("\(key): \(value)")
    }
}
