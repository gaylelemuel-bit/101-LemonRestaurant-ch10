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

/// Session #2
print("\n-- Movie Struct --")

struct Movie {
    var title: String
    var genre: String? // means optional
    var director: String
    var year: Int
    
    func printSummary() {
        print("\(title) \(year) was directed by \(director)")
    }
}

//create instances
let interstellar = Movie(
    title: "Interstellar",
    genre: "Adventure",
    director: "Christopher Nolan",
    year: 2014
)

let darkKnight = Movie(
    title: "The Dark Knight",
    genre: "Action",
    director: "Christopher Nolan",
    year: 2008
)
let toyStory = Movie(
    title: "Toy Story",
    genre: "Animation",
    director: "John Lasseter",
    year: 1995
)
let passionOfChrist = Movie(
    title: "Passion of Christ",
    genre: "Drama",
    director: "Roman Polanski",
    year: 1994
)

let trainingDay = Movie(
    title: "Training Day",
    genre: "Drama",
    director: "Lana Wachowski, Lilly Wachowski",
    year: 2010
)
let brotherBear = Movie(
    title: "Brother Bear",
    genre: "Animation",
    director: "John Lasseter",
    year: 1991
)

interstellar.printSummary()
darkKnight.printSummary()
toyStory.printSummary()


// array of structs
let movies = [interstellar, darkKnight, toyStory, passionOfChrist, trainingDay, brotherBear]

print("\n-- Loop through movies array --")

for movie in movies {
    print("\(movie.title), -\(movie.year), directed by \(movie.director)")
}

/*
 Mini Challenge
 
 1. add the property genre to the movie struct
 2. create at least 3 more and add them to the array
 3. loop through the array and print only the movies released after 2000,
    and dont forget to aslo show the genre property
 
 */

print("\n Mini challenge Movies ---")
for movie in movies {
    if movie.year > 2000 {
        print("\(movie.title),\(movie.genre), -\(movie.year)")
    }else {
        print("\(movie.title),\(movie.genre), - \(movie.year)")
    }
}

