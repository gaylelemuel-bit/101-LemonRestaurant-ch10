import UIKit


/*
 ----- Struct----
 Custom data type that lets you group related values and behaviors together.
 Struct is like a blueprint, struct defines the plan.
 Structs define the shape of data, instances bring it to life.
  It can contains:
     -Porpertiies
     - Methods
     - Computed properties
 
 -- Syntax ----
 
 Struct structName {
      var/let propertyName1: ElementType
      var/let propertyName2: ElementType
 
    func functionName (){
       //function body
   }
 }
 
 -- Creating and instance of a struct ----
 let/var instanceName = StructName(propertyName1: value1, propertyName2: value2,...)
 
 
 */
struct MenuItem {
    var name: String
    var price: Double
    var imageName: String
}

print("/n-- Creaying Instance of a struct --")
let burger = MenuItem(name: "Burger", price: 5.99, imageName: "burger")
print(burger)
print("/n---Accesing properties---")
print(burger.name)
print(burger.price)
print(burger.imageName)

/*
 mini challenge
 
 -create a new instance of MenuItems
 -Create your instance using your favorite dish
 -print out all the properties
 */

 print("/n-- favorite dishes---")
let meal = MenuItem(name: "Jerk Chicken", price: 18.99, imageName: "jerk chicken")
print(meal)
print(meal.name)
print(meal.price)
print(meal.imageName)

print("/n --- Customer struct---")
struct Customer {
    let name: String
    var age: Int
    let email: String
    var visits: Int
    
    func loyaltyStatus() {
        if visits > 10 {
            print("\(name) is a loyal customer ⭐️")
        }
        else {
            print("\(name) is a regular customer ")
        }
    }
}
let angela = Customer(name: "Angela", age:45, email:"angela2001@gmail.com", visits: 1)
let jake = Customer(name: "Jake", age:25, email:"jake1@gmail.com", visits: 31)
let morris = Customer(name: "Morris", age:35, email:"morris23@gmail.com",visits: 20)
let donald = Customer(name: "Donald", age:30, email: "donald@gmail.com", visits: 13)
let kim = Customer(name: "Kim", age: 27, email:"kim@gmail.com", visits: 4)

angela.loyaltyStatus()
jake.loyaltyStatus()
morris.loyaltyStatus()
donald.loyaltyStatus()
kim.loyaltyStatus()


print("/n-- Struct Book--")

struct Book {
    let title: String
    let author: String
    let pages: Int
    
    func printDetails() {
        print("\(title) by \(author) with \(pages) pages")
    }
}

let swiftBook = Book(
    title: "Coding with swift",
    author: "John",
    pages: 400)
let swiftUiBook = Book(
    title: "SwiftUI",
    author: "Jane",
    pages: 300)
let swiftUiBook2 = Book(
    title: "SwiftUI",
    author: "Jane",
    pages: 300)

print("/n---Swiftbook--")
print(swiftBook.title)
print(swiftBook.author)
print(swiftBook.pages)


