import UIKit

//Functions
/*
 Syntax
 func functioName(param1:Type,param2:Type)->
 ReturnType {
 //body of the function
 //logic goes here
 
 return value
 }
 */
//Example 1 - no parameters
func printWelcome(){
    print("Hello World")

}
printWelcome()

//Example 2 - with parameter
func greet(person:String) -> String{
    let greeting = "Hello " + person + "!"
    return greeting
    
}
let message = greet(person:"Sam")
print(message)


//Example 3 - with 2 parameters
func add(number1: Int, number2: Int) -> Int{
    return number1 + number2
}

let result = add(number1:255,number2:664)
print("the addition between 255 + 664 = \(result)")

// Example 4 - with unamed para
// Example 4 - with unnamed parameters
func multiply(_ x: Int, _ y: Int) -> Int {
    return x * y
}
print(multiply(3, 5))



func deliveryStatus(minutes: Int) -> String {
    if minutes == 0 {
        return "Your order is ready!"
    } else if minutes <= 15 {
        return "pulling up — ready in \(minutes) minutes."
    } else if minutes <= 45 {
        return "OTW \(minutes) minutes."
    } else {
        return "Running late. Estimated time: \(minutes) minutes."
    }
}

print(deliveryStatus(minutes: 0))
print(deliveryStatus(minutes: 10))
print(deliveryStatus(minutes: 30))
print(deliveryStatus(minutes: 60))



func serviceFee(total: Double) -> Double {
    if total < 20 {
        return 0.0
    } else if total < 50 {
        return total * 0.10
    } else if total < 100 {
        return total * 0.15
    } else {
        return total * 0.20
    }
}

func finalBill(total: Double) -> String {
    let fee = serviceFee(total: total)
    let grandTotal = total + fee
    
    let totalStr = String(format: "%.2f", total)
    let feeStr = String(format: "%.2f", fee)
    let grandTotalStr = String(format: "%.2f", grandTotal)
    
    return "Bill: $\(totalStr) + fee: $\(feeStr) = $\(grandTotalStr)"
}

print(finalBill(total: 15.0))
print(finalBill(total: 35.0))
print(finalBill(total: 75.0))
print(finalBill(total: 120.0))


func assignSection(guests: Int) -> String {
    if guests <= 2 {
        return "Bar"
    } else if guests <= 4 {
        return "Main Dining Room"
    } else if guests <= 8 {
        return "Patio"
    } else {
        return "Private Event Room"
    }
}

func reserveSummary(name: String, guests: Int) -> String {
    let section = assignSection(guests: guests)
    return "Reservation for \(name) (\(guests) guests) — Section: \(section)"
}

// Testing the functions
print(reserveSummary(name: "Alice", guests: 2))
print(reserveSummary(name: "Bob", guests: 4))
print(reserveSummary(name: "Charlie", guests: 6)) 
print(reserveSummary(name: "Diana", guests: 12))
