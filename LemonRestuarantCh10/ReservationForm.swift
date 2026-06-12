//
//  ReservationForm.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/5/26.
//

import SwiftUI

struct ReservationForm: View {
    //constants
    let restuarantName = "Little Lemon"
    let maxGuest = 10
    
    // State Variable
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var childrenCount = 0
    @State private var allergies = ""
    @State private var showMessage = false
    @State private var reservationDate = Date()
    
    //computed property
    var phoneDigits: String {
        phoneNumber.filter { $0.isNumber }
    }
    
    var isPhoneValid: Bool {
        phoneDigits.count == 10
    }
    
    var isFormValid: Bool {
        !userName.isEmpty && userName.count >= 3 && isPhoneValid
    }
    
    var nameFieldColor: Color {
        if userName.isEmpty {
            return .red
        } else if userName.count < 3 {
            return .orange
        } else {
            return .primary
        }
    }
    
    var reservationStatus: String {
        if userName.isEmpty && !isPhoneValid {
            return "Fill in your name and phone number to continue"
        } else if userName.isEmpty {
            return "Missing name"
        } else if userName.count < 3 {
            return "Name must be at least 3 characters"
        } else if !isPhoneValid {
            return "Missing valid phone number"
        } else {
            return "Thank you for your reservation"
        }
    }
    
    var body: some View {
        Form {
            //header
            Section {
                HStack {
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.orange)
                        .font(.title2)
                    
                    VStack(alignment: .leading) {
                        Text(restuarantName)
                            .font(.title3)
                            .bold()
                        
                        Text("Reservation Form")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            
            // reservation details
            Section(header: Text("Reservation Details")) {
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                    .font(.title3)
                    .foregroundColor(nameFieldColor)
                    .padding(8)
                    .background(nameFieldColor.opacity(0.1))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(nameFieldColor, lineWidth: 1)
                    )
                if userName.isEmpty {
                    Text("Please enter a name")
                        .font(.footnote)
                        .foregroundColor(.black)
                } else if userName.count < 3 {
                    Text("Name must be at least 3 characters")
                        .font(.footnote)
                        .foregroundColor(.orange)
                }
                
                DatePicker(
                    "Reservation Date",
                    selection: $reservationDate,
                    in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                )
                .padding(2)
                
                //using a constant
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuest)
                
                if guestCount >= 8 {
                    Text("Large group, we'll do our best to accommodate you")
                        .font(.footnote)
                        .foregroundColor(.orange)
                }
            }
            
            //contact section
            Section(header: Text("Contact")) {
                TextField("Phone Number", text: $phoneNumber)
                    .keyboardType(.phonePad)
                
                if phoneNumber.isEmpty {
                    Text("Please enter a phone number")
                        .font(.footnote)
                        .foregroundColor(.red)
                } else if !isPhoneValid {
                    Text("Please enter a valid 10-digit phone number")
                        .font(.footnote)
                        .foregroundColor(.orange)
                } else {
                    Text("Phone number looks good")
                        .font(.footnote)
                        .foregroundColor(.green)
                }
            }
            
            //Optional section
            Section(header: Text("Optional")) {
                TextField("Allergies", text: $allergies)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                //using a constant
                Stepper("Children: \(childrenCount)", value: $childrenCount, in: 0...maxGuest)
                
                if childrenCount >= 1 {
                    Text("Kids menu available")
                        .font(.footnote)
                        .foregroundColor(.green)
                }
                
                Toggle("Show a special text", isOn: $showMessage)
                
                if showMessage {
                    Text("Discount available")
                        .font(.footnote)
                        .foregroundColor(.green)
                }
            }
            
            Section {
                Text(reservationStatus)
                    .font(.footnote)
                    .foregroundColor(isFormValid ? .green : .orange)
            }
            
            Section(header: Text("Actions")) {
                Button("Preview Reservation") {
                    previewText = """
                    Name: \(userName)
                    Adults: \(guestCount) Children: \(childrenCount)
                    Date: \(reservationDate.formatted(date: .abbreviated, time: .shortened))
                    Phone: \(phoneNumber)
                    Allergies: \(allergies.isEmpty ? "None" : allergies)
                    Total Guests: \(guestCount + childrenCount)
                    """
                }
                .disabled(!isFormValid)
            }
            
            Section(header: Text("Preview")) {
                Text(previewText.isEmpty ? "No information yet" : previewText)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(.vertical, 5)
                    .textSelection(.enabled)
            }
        }
    }
}

#Preview {
    ReservationForm()
}
