////  AddDishViewForm.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/27/26.
//

import SwiftUI

struct AddDishViewForm: View {
   // @State private var dishName = ""
    @Environment(\.dismiss) var dismiss
    @Binding var newDish: Dish
    @Binding var dishes: [Dish]
    
    var body: some View {
        Form {
            Section(header: Text("New Dish")){
                TextField("Name", text: $newDish.name)
                TextField("Category", text: $newDish.category)
                TextField("Price", value: $newDish.price, format: .number)
                TextField("Description", text: $newDish.description)
                TextField("Image Name", text: $newDish.imageName)
                    .textInputAutocapitalization(.never)
            }
            Button("Add Dish") {
                dishes.append(newDish)
                
                newDish = Dish(name: "",
                               category: "",
                               price: 0,
                               description: "",
                               imageName: ""
                )
                dismiss()
            }
        }
    }
}

#Preview {
    // ✅ FIX 1: Added @Previewable attribute here
    @Previewable @State var sampleDish = Dish(
        name: "",
        category: "",
        price: 0,
        description: "",
        imageName: ""
    )
    // ✅ FIX 2: Added the missing 'var' keyword here
    @Previewable @State var sampleDishes: [Dish] = []
    
    AddDishViewForm(newDish: $sampleDish, dishes: $sampleDishes)
}
