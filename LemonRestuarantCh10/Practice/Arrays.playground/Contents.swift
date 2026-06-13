

/*
 ---- ARRAYS----
 ordered collection that score mulitpe value of the dame type in a single varable.
 Values are stored in a specific order.
 Each value has an index starting at 0.
 
 ---- Syntax ---
 var/let arrayName - [value1, value2, value3 ...]
 
 */

print("----- ARRAYS -----")

print("\n---- Basic Array (String)----")
var coolGuys = ["Rafael", "Lemuel", "Micahel" , "Robert"]

print(coolGuys)

/* Prints name by calling secfic index */
print(coolGuys[0])
print(coolGuys[1])
print(coolGuys[2])
print(coolGuys[3])




print("\n---- Basic Array (String)----")
let musicBands: [String] = ["Green Day","GNR", "ACDC","Scorpions","Blink182"]

print(musicBands)

/*
 ---- MINI CHALLENGE 1----
 create an array with your top three favorite desserts and print them
 */

print("\n--- Challenge 1 ---")
var favoriteDesserts: [String] = ["Banana Pudding", "Carrot Cake", "Rasberry Peach Cheesecake"]

print(favoriteDesserts)


print("\n--- Challenge 2 ---")

/*
 --- MINI CHALLENGE 2 ----
 print the total number of dessesrts
 */
print(favoriteDesserts.count)

print("\n--- Arrays of numbers (Int)")
var numbers: [Int] = [2,4,6,8,10,12]

print(numbers)


print("\n-- Array Methods ---")
var dishes:[String] = ["Pizza","Pasta","Salad"]

print(dishes)
print(dishes[1])

print("--- Adding a new dish (append) push to the end of the array ---")
dishes.append("Soup")
print("Dishes after pushing soup \(dishes)")


print("\n-- Adding a new dish (insert(x,at:index#)) adds to the specific index --")
dishes.insert("Steak",at:1)
print(dishes)


print("\n Removing a dish (remove()) --")
dishes.remove(at: 3)
print(dishes)



/*
 ------ For Loops -----
 for LoopVariable in array {
 // code to repeat
 }
 
 */

print("\n---- Looping through an array ----")
var students = ["Lemuel", "Michael", "Rafeal", "Robert", "Leo"]
print(students)

for student in students {
    print(student)
}

print("\n-- Looping through string")

for letter in "HelloWorld" {
    print(letter)
    
}

print("\n--- filtering calories  (for loop) ---")
let calories = [0,80,110,150,210,280,320]

for calorie in calories {
    if calorie > 200 {
        print(calorie)
        
    }
}
