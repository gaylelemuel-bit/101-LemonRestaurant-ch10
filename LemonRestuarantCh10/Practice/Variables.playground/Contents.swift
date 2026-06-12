import UIKit

//Varaibles ->var
//constants -> let

var restaurantName = "Little Lemon"
print("Welcome to \(restaurantName)")

restaurantName = "Little Lemon Bistro"
print("now we are called \(restaurantName)")

let city = "Chicago"
print("our \(restaurantName) is located in \(city)")


// string
var specialDish = "Alfredo Pasta"

//intergers
var avaiableTables = 3

// Doubles
dishPrice = 9.56

// Boolean
var isOpen = True
/////MiniChallenge#1-------------------

var numberOfTables = 3
let ownerName = Lemuel
print("Little Lemon has \(numberOfTables), owned by \(ownerName)")

/////-MiniChallenge#2-------------------

var mainDish:String = "Steak and potates"
var tableCount:Int = 7
var price:Double = 9.95
var openStatus:Bool = false
print("Little Lemon is open \(openStatus), has \(tableCount), and our steak cost wa \(price)")


//math operations
var pastaPrice = 10.50
var saladPrice = 6.25
var total = pastaPrice = saladPrice

////MiniChallange3----------------------
print(String(format:%.if, total))


//Text("\(total,specifier:"%.1f")")
print(String(format:"%.1f",total))




import SwiftUi
struct ResverationsForm: View {
       // constants
       let restaurentName = " Little Lemon "
       let maxGuests = 10
     
     // Sate variable
     // "if this value changes, updates UI"
       @State private var username = ""
       @state private var guestCount = 1
       State private var phoneNumber = ""
       Var body: some View{
           Form{
               //header
               Section {
                  HStack{
                       Image(systemName" ("fork.knife")
                       .foregroundColor(.orange)
                       .font(.title2)
                     Text("image")
                      VStack(alignment: .trailing){
                         Text(restaurentName)
                         Text("reservation form")
                       }
                   }
               }
               // reservation details
               Section(header: text("Reservation
                   Details")){
                   TextFieild("Name", text:$username)
                      .textInputAutocapitalization(
                           .words)
                      .autocorrectionDisabled(true)

             // using a constant
            Stepper("Guests: ", value:
                 $guestCount, in:1...maxGuests)
             }
           }
        }
        section(header: text("Contact")){
                TextField("phone",text:$phoneNumber)
                   .keyboardType(.numberPad)
         }
         section(header:text("Action"){
             Button(:Preview resveration"){
                previewText = """
                Name:\(username)
                Phone:\(phoneNumber
                $guestCount
               
                """
            }
          }
          section(header:text("preview")){
             Text(previewText.isEmpty ? "no Information yet" : previewText)
               .font(.footnote)
               .foregroundColor(.secondary0
               .padding(.vertical, 50
               .textSelection(.enabled)
          
          }
 
    }
       
