//
//  BillCalculatorView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/9/26.
//

import SwiftUI

struct BillCalculatorView: View {
    //constant
    let restuarantName = "Lemon Restuarant"
    let adultPrice: Double = 25.0
    let childPrice: Double = 12.0
    let discountPercentage: Double = 0.10
    
    //State vars
    @State private var adultCount = 2
    @State private var childCount = 0
    @State private var hasDiscount = false
    
    //functions
    
    //calculate subtotal
    func calculateSubtotal(adult: Int, children: Int) -> Double {
        return (Double(adult) * adultPrice) + (Double(children) * childPrice)
    }
    
    func calculateDiscount(subtotal: Double) -> Double {
        guard hasDiscount else { return 0.0 }
            
            if subtotal >= 50.0 {
                return (subtotal * discountPercentage)
            } else if subtotal >= 20.0 {
                return (subtotal * 0.05)
            } else {
                return 0.0
            }
        }
    // Computed properties for prices
    private var subtotal: Double {
        calculateSubtotal(adult: adultCount, children: childCount)
    }
    
    private var discountAmount: Double {
        calculateDiscount(subtotal: subtotal)
    }
    
    private var totalBill: Double {
        subtotal - discountAmount
    }
    
    var body: some View {
        Form { //header
            Section {
                HStack {
                    Image(systemName: "banknote")
                        .foregroundStyle(.orange)
                        .font(.title2)
                    
                    VStack(alignment: .leading) {
                        Text(restuarantName)
                            .font(.title3)
                            .bold()
                        
                        Text("Bill Calculator")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            //---input---
            Section(header:Text("Your group")){
                //stepper adults
                Stepper("Adults: \(adultCount)", value: $adultCount, in: 1...20)
                
                //Stepper children
                Stepper("Children: \(childCount)", value: $childCount, in: 0...20)
                
                //toggle for discount
                Toggle("Apply 10% Discount", isOn: $hasDiscount)
            }
            
            //--- breakdown prices-----
            Section(header: Text("Breakdown Prices")) {
                LabeledContent("Subtotal") {
                    Text(subtotal, format: .currency(code: "USD"))
                }
                
                if hasDiscount {
                    LabeledContent("Discount") {
                        Text(-discountAmount, format: .currency(code: "USD"))
                            .foregroundColor(.green)
                    }
                }
                
                LabeledContent {
                    Text(totalBill, format: .currency(code: "USD"))
                        .bold()
                        .foregroundColor(.orange)
                } label: {
                    Text("Total Bill")
                        .bold()
                }
            }
        }
    }
}

#Preview {
    BillCalculatorView()
}

