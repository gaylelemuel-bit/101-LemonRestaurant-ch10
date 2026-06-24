import UIKit

// Case transformation
let greeting = "hello world"
greeting.uppercased() // HELLO WORLD
greeting.lowercased() //hello world
greeting.capitalized // Hello World

// trimming & replacing
let spaced = " Cohort10 "
print(spaced.trimmingCharacters(in: .whitespaces))

let phrase = "Hello, World"
print(phrase.replacingOccurrences(of: "World", with: "Cohort#100"))

//searching
let text = "Swift is fun"
print(text.contains("fun")) // true
print(text.hasPrefix("Swift")) //true
print(text.hasSuffix("fun")) //true

//Substrings
let letters = "abcdef"
print(letters.prefix(3)) //abc
print(letters.suffix(2)) //ef
print(letters.dropFirst()) bcdef
print(letters.dropLast()) // abcde

// Counting and checking
print ("Hello".count) //5
print("".isEmpty) //true

// Converting
let numberStrig = "123"
print(Int(numberString) ?? 0) //123

let piString = "3.14"
print(Double(piString) ?? 0.0) // 3.14

