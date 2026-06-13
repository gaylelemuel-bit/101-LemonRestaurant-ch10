import UIKit

/*
 ------ ForEach----
 Method avaiable on any sequence(range, string, arrays) in swift
 It lets run a block of code for every element in that sequence.
 
 ---- Syntax ----
 
 sequence.foreach { element i
 // do something with the elment
 */

print("---- ForEach ----")
print("\n-- ForEach with a range ---")

(1...5).forEach { number in
    print(number)
}

print("\n-- forEach with a string ---")
"HelloWorld".forEach { letter in
    print(letter)
}


print("\n--- Mini Challenge 1 ----")
var students = ["Lemuel","Michael", "Robert", "Rafael", "Leo"]

students.forEach {student in
    print(student)
}
