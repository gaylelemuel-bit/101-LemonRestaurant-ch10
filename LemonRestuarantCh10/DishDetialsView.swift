//
//  DishDetialsView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/20/26.
//

import SwiftUI

struct Dish {
    var name: String
    var category: String
    var price: Double
    var description: String
    var imageName: String
}

struct DishDetialsView: View {
    let dish: Dish
    
    var body: some View {
        VStack(spacing: 16) {
            Image(dish.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(dish.name)
                    .font(Font.title.weight(.bold))
                Text(dish.category)
                    .foregroundStyle(Color.secondary)
                Text("\(dish.price)")
                    .foregroundStyle(.green)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            
            Text(dish.description)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    DishDetialsView(
          dish:  Dish(name: "Greek Salad", category: "Salads", price: 10.99, description: "A vibrant and crisp Greek salad featuring perfectly ripe vine tomatoes, crunchy cucumbers, sliced red onions, and bell peppers. Tossed with authentic kalamata olives and topped with a generous block of premium feta cheese, all lightly drizzled with extra virgin olive oil and wild oregano.", imageName: "greek-salad-image")
    )
}
