import UIKit


/* --
 --- DICTIONARIES---
 Unordered collection that store key-value pairs.
 Each key must be unqiue
 
 --- Syntax--
 
 var/let dictionaryName = [
 key1: value1,
 key2: value2,
 key3: value3
 ]
 
 */

print("----Dictionaries---")

print("\n--String values --")
let studentInfo = [
    "firstName": "Lemuel",
    "lastName": "Gayle",
    "cohort": "10",
    "email": "lg@gmail.com"
]
print(studentInfo)
print(studentInfo["firstName"]!) ///removes the optional in the terminal
print(studentInfo["lastName"] ?? "Not found") /// another option print without warning  and if value dont exist
print("Cohort: \(studentInfo["cohort"]!)")
print(studentInfo["email"]!)


print("\n-- Looping through studentInfo (for loop) ---")
for (key, value) in studentInfo {
    print("\(key): \(value)")
}

print("\n -- Loop through stundentInfo (for loop) --")
studentInfo.forEach { (key, value) in
        print("\(key): \(value)")
}

print("\n-- String values --")
let courseInfo = [
    "name": "iOS",
    "code": "iOS101",
    "schedule": "Mon-Thru 5pm"
]

print(courseInfo["code"]!)



print("\n-- Loop through courseInfo (for loop) --")
for (key, value) in courseInfo {
    print("\(key)= \(value)")
}

print("--- looping through courseInfo (forEach) --")
courseInfo.forEach { (key, value) in
    print("\(key)= \(value)")
}

print("\n--- Int Values ---")
var servingsAvailable = [
    "pizza": 12,
    "pasta": 7,
    "salad": 8
]

print("Servings Available: \(servingsAvailable)")
print("-- add a new item --")
 servingsAvailable["soup"] = 4 // add an item
print(servingsAvailable)

print("--- update an existing item ---")
servingsAvailable["pizza"] = 10 // update item like a variable
print(servingsAvailable)


print("-- removing an existing item --")
servingsAvailable["soup"] = nil //removes item
print(servingsAvailable)

print("Today we have \(servingsAvailable.count) dishes in stock")

print("-- Get all keys --")
print(servingsAvailable.keys) //call keys

print("-- Get all Values ---")
print(servingsAvailable.values) //call values

print("-- Remove all items ---")
servingsAvailable.removeAll()
print(servingsAvailable)

print("/n-- Doube values ---")
var dishPrices = [
    "pizza": 10.99,
    "pasta": 10.50,
    "salad": 6.99
]
print(dishPrices)
print(dishPrices["Pasta"] ?? "0.0")

let name = 9.00
print(type(of: "testing"))


print("\n--- Bool Values ---") // true | false
let availablility = [
    "Pizza": true,
    "Pasta": false,
    "Salad": true
]
print(availablility)
print("-- looping through (for loop) ---- ")
for (key, value) in availablility {
    print("\(key): \(value==true ? "Available" : " Sold out")")
}

print("-- looping through using (forEach) If Statements --- ")
availablility.forEach { (key, value) in
    if value {
        print("\(key) - Available")
    } else {
        print("\(key) - Sold out")
    }
}


/*
 --- mini challenge "daily ingredients
 start with this dictionary:
 var ingredents = [
 "Tomato" :888,
 "Cheese": 16,
 "Garlic": 6,
 "Potato": 12,
 "Mushroom": 10,
 "Spinach": 2
 ]
 
 1 add/update the new ingredints the manger brought
 8 onions
 24 carrots
 12 lettuces
 3 Spinach
 
 2. Fix the mistakes
 -Tomatoes where incorrectly counted as 888, but the correct amount is 88.
 - Cheese packages were incorreclt counted, there are 0 packages.
 
 3. After working day, print a full report
 - Show each ingredient and its amount
 
 */
print("\n MiniChallenge daily ingredients ---")
var ingredients = [
"Tomato" :888,
"Cheese": 16,
"Garlic": 6,
"Potato": 12,
"Mushroom": 10,
"Spinach": 2
]
print(ingredients)

ingredients["Onions"] = 8
ingredients["Carrots"] = 24
ingredients["Lettuces"] = 12
ingredients["Spinach"] = ingredients["Spinach"]! + 3

ingredients["Tomato"] = 88
ingredients["Cheese"] = 0

print(ingredients)


print("\n-- Dictionary with array values")
let menuCategories = [
    "Drink": ["Coconut water", "Juice", "Tea"],
    "Appetizers": ["Wings", "Salad", "BreadSticks"],
    "Main": ["Spaghetti", "Pizza", "Pasta Bolognese"],
    "Dessert": ["CarrotCake", "Brownies", "Ice cream"]
]

print(menuCategories)
print("\n-- looping thrugh menuCategories --")
for (category, items) in menuCategories {
    print(category)
    for item in items {
        print("- \(item)")
    }
}

print("\n-- looping through menuCategories (forEach) ---")
menuCategories.forEach { (category, items) in
    print("\n \(category)")
    items.forEach{ items in
        print("- \(items)")
            
        }
}

/*
 --- Mini Challenge "School and topics ----
 1. Create a dictionary called "schoolSubjects"
   - A subject is the key, and the value is an array of topics
 
 2. Add at least 3 subjects
   - Example: Math, Science, Progamming, Art...
 
 3. Each subject must have at least 3 Topics
 - Examples:
 Math > Algebra, Geometry, Fractions
 Programming> Loops, Arrays,Dictionaries
 
 4 Render all the subjects with thier topics
 
 5. Render your favorite subject with its topics
 */

print("\n--- Mini Challenge School and Topics ---")
let schoolSubjects = [
    "Math":["Fractions","Geometry","Algebra"],
    "History":["World History","Geography","History of Art"],
    "Art":["Drawing","Painting","Sculpture"]
]
print(schoolSubjects)
for (subject,topic) in schoolSubjects {
    print(subject)
    for topics in topic {
        print("> \(topics)")
    }
}

print("\n-- forEach--")
schoolSubjects.forEach { (subject, topics) in
    print(subject)
    topics.forEach{ topic in
        print("- \(topic)")
    }
}
