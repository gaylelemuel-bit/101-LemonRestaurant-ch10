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
        Dish(name: "Steak",
             category: "Main Course",
             price: 30.99,
             description: "A deeply flavorful, tender flat iron steak seared in a screaming-hot cast-iron skillet with crushed garlic and fresh rosemary. basted continuously with foaming brown butter and served thinly sliced",
             imageName: "steak-image"
            ),
        Dish(name: "Lamb",
             category: "Main Course",
             price: 26.99,
             description: "A premium, oven-roasted Australian rack of lamb coated in a vibrant crust of fresh rosemary, thyme, and Dijon mustard. Served medium-rare with a rich, glossy red wine demi-glace reduces",
             imageName: "Lamb-image"
            ),
        Dish(name: "Waffles",
             category: "Breakfast",
             price: 9.99,
             description: "Baked to a rich amber color using our house-made buttermilk batter. Delivers a subtly sweet, nostalgic flavor profile with hints of vanilla.",
             imageName: "waffles-image"
            ),
        Dish(name: "Omelette",
             category: "Breakfast",
             price: 10.99,
             description: "A comforting, golden-brown American-style classic packed to the brim with diced hickory-smoked ham, grilled green bell peppers, and sweet sweet onions. Smothered in melted sharp cheddar cheese",
             imageName: "omelette-image"
            ),
        Dish(name: "French Toast",
             category: "Breakfast",
             price: 9.99,
             description: "Golden French toast layered with a velvety, house-made whipped mascarpone cream. Topped with a vibrant compote of fresh blackberries, raspberries, and wild blueberries",
             imageName: "Toast-image"
            ),
        Dish(name: "Chocolate Cake",
             category: "Dessert",
             price: 7.99,
             description: "A moist, fudgy chocolate cake, generously layered with a creamy mascarpone cream and finished with a dusting of powdered sugar",
             imageName: "chocolatecake-image"
            ),
        Dish(name: "Carrot cake",
             category: "Dessert",
             price: 8.99,
             description: "A moist, fudgy chocolate cake, generously layered with a creamy mascarpone cream and finished with a dusting of powdered sugar",
             imageName: "carrot-cake-image"
            ),
        Dish(name: "Cesar Salad",
             category: "Salads",
             price: 6.99,
             description: "Crisp, cold hearts of Romaine lettuce tossed in our legendary house-made dressing. Emulsified with rich egg yolk, roasted garlic, Spanish anchovies, and fresh lemon. Finished with aged Parmigiano-Reggiano curls and toasted artisan brioche croutons",
             imageName: "cesar-salad"
            ),
        Dish(name: "Orange juice",
             category: "Drinks",
             price: 3.99,
             description: "Pressed in-house every single morning using the season's sweetest, juiciest citrus fruits. Unpasteurized, pure, and served chilled for a vibrant, naturally sweet burst of sunshine",
             imageName: "orange-juice"
            ),
        Dish(name: "Tea",
             category: "Drinks",
             price: 3.99,
             description: "A full-bodied, robust blend of premium black tea leaves sourced from top tea gardens. Delivers a deep amber liquor with a rich, malty flavor that pairs perfectly with a splash of milk and sugar",
             imageName: "Tea-image"
            ),
        Dish(name: "Coffee",
             category: "Drinks",
             price: 3.99,
             description: "A smooth, medium-bodied drip coffee brewed fresh every twenty minutes. Delivers a perfectly balanced cup with bright notes of citrus and a sweet milk-chocolate finish",
             imageName: "coffee"
            ),


        
             
        
    ]
    @State private var selectedCategory:String = "All"
    var filteredDishes: [Dish]{
        if selectedCategory == "All"{
            return dishes
        } else {
            return dishes.filter {$0.category == selectedCategory}
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Picker("Category", selection: $selectedCategory) {
                    Text("All").tag("All")
                    Text("Breakfast").tag("Breakfast")
                    Text("Main Course").tag( "Main Course")
                    Text("Salads").tag( "Salads")
                    Text("Dessert").tag( "Dessert")
                    Text("Drinks").tag( "Drinks")
                }
                .pickerStyle(.segmented)
            
                
            
            
                List(filteredDishes, id: \.name){dish in
                    NavigationLink(destination: DishDetialsView(dish: dish)) {
                        Image(dish.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(RoundedRectangle(cornerRadius: 12)) // Smooth corners
                            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
                        VStack{
                            Text(dish.name)
                                .font(Font.body.bold())
                            Text(dish.price.formatted())
                                .foregroundStyle(.green)
                            
                        }
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
