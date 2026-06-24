//
//  DishListView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/23/26.
//

import SwiftUI

struct DishListView: View {
    
    var dishes:[Dish] = [
        Dish(name: "Pancake",
             category: "Breakfast",
             price: 8.99,
             description: "A towering stack of three light, fluffy buttermilk pancakes, griddled to a perfect golden brown. Overflowing with a vibrant medley of juicy, farm-fresh strawberries and plump, wild blueberries. Crowned with a dollop of velvety, house-whipped sweet cream, lightly dusted with powdered sugar, and served with a side of warm, 100% pure amber maple syrup",
             imageName: "pancake-image"
        ),
        
        Dish(
            name: "Pasta",
            category: "Main Course",
            price: 14.50,
            description: "An Italian comfort classic crafted with passion. Al dente spaghetti tossed in a rich, slow-simmered pomodoro sauce made from sweet San Marzano tomatoes, roasted garlic, and fragrant extra virgin olive oil. Infused with freshly torn garden basil, topped with a generous dusting of aged Parmigiano-Reggiano, and finished with a crack of black pepper.",
            imageName: "pasta-image"
        ),
        Dish(
            name: "Pizza",
            category: "Main Course",
            price: 12.00,
            description: "An artisanal, wood-fired masterpiece featuring ultra-tender grilled chicken breast, vibrant baby spinach leaves, and crisp, thinly sliced red onions. Set atop a rich layer of our house-made zesty tomato sauce and smothered in melted, bubbly mozzarella cheese. Finished with a delicate drizzle of garlic-infused extra virgin olive oil and a sprinkle of cracked black pepper on a perfectly charred crust.",
            imageName: "pizza-image"
        ),
        Dish(
            name: "Greek Salad",
            category: "Salads",
            price: 6.99,
            description: "A vibrant, crisp mosaic of tradition and flavor. We combine perfectly ripe vine-tomatoes, crunchy English cucumbers, thinly sliced red onions, and sweet bell peppers, gently tossed with authentic, briny Kalamata olives. The masterpiece is crowned with a generous block of premium, creamy barrel-aged feta cheese, lightly drizzled with cold-pressed extra virgin olive oil and a pinch of wild Greek oregano.",
            imageName: "greek-salad-image"
        ),
    ]
    var body: some View {
        NavigationView {
            List(dishes, id: \.name){dish in
                NavigationLink(destination: DishDetialsView(dish: dish)) {
                    Image(dish.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 12)) // Smooth corners
                        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
                    VStack{
                        Text(dish.name)
                        Text(dish.price.formatted())
                            .foregroundStyle(.green)
                        
                    }
                }
                
            }
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    DishListView()
}
