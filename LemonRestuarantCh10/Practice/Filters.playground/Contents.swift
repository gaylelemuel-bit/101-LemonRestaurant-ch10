import UIKit

/*
 ---- Filter ----
 Array method that creates new array containing only elements that satisfy a
 giiven condidition.
 it does not modift the orginal array, it returns a new one.
 Filter keeps only the items that return true.
 
 --- syntax--
 
 collections.filter {$0 condition }
 
 */

print("---Filter---")

print("\n -- filter : number (even numbers) --  ")

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let evenNumbers = numbers.filter { number in
    return number % 2 == 0
}

//let even Numbers2 = numbers.filter{ $0 % 2 == 0}

print(evenNumbers)

//Mark:-
print("\n--- filter numbers (multiples of 3)--")

let multiplesOf3 = numbers.filter { $0.isMultiple(of: 3) }
print(multiplesOf3)

print("---- another option ----")
let oddNumbers = numbers.filter{ $0 % 3 == 0}
print(oddNumbers)

//Mark:-
print("\n-- Filter: number (greater than 5)---")

let values = [2, 34,1,41,68,10,3,5,7,2,0,55]

let bigValues = values.filter{ $0 > 5}
print(bigValues)

//mark:-
print("\n--- filter: dictionary (name with more 5 letters")
let students = [
        "pam": 19,
        "jake": 24,
        "Lemuel": 22,
        "Michael": 29,
        "Robert": 26
      ]
let longNames = students.filter { $0.key.count > 5}
print(longNames)

//Mark:-
print("\n filter: dictionary (dishes price < $10)---")
let dishes = [
    "pizza": 12,
    "pasta": 8,
    "salad": 5,
    "sandwich": 4
]
let budgetDishes = dishes.filter { $0.value < 10}
print(budgetDishes)

//Mark:-
print("\n filter: string (only letters and spaces")
let words = "Hello Cohort #10"

let onlyletters = words.filter { $0 != " "}
print(onlyletters)

print("\n-- filters arrays--")
let vegeterianMenu = [
    "Veggie Salad", "Steak", "Fruit Bowl", "Cesar Salad"
]
let fliteredMenu = vegeterianMenu.filter { $0.contains("Salad") || $0.contains("Fruit")}
print(fliteredMenu)
