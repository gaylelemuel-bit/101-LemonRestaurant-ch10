//
//  MenuListView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/18/26.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
    let imageName: String
}

struct MenuListView: View {
    let beverages = [
        MenuItem(name: "Coconut Water", price: 2, imageName: "coconut"),
        MenuItem(name: "Ginger Tea", price: 3, imageName: "ginger tea"),
        MenuItem(name: "Lemon Water", price: 1, imageName: "lemon water")
    ]
    
    let mainCourse = [
        MenuItem(name: "Pasta", price: 4, imageName: "pasta"),
        MenuItem(name: "Steak", price: 8, imageName: "meat"),
        MenuItem(name: "Lamb", price: 6, imageName: "ribs")
    ]
    
    let breakfast = [
        MenuItem(name: "Omlette", price: 10, imageName: "omlette"),
        MenuItem(name: "Panckakes", price: 12, imageName: "pancakes"),
        MenuItem(name: "Waffles", price: 11, imageName: "waffle")
    ]
    
    let dessert = [
        MenuItem(name: "Chocolate Cake", price: 4, imageName: "cake"),
        MenuItem(name: "Banana Split", price: 8, imageName: "banana split"),
        MenuItem(name: "Sundae", price: 6, imageName: "ice-cream-cup")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(beverages, id: \.id) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .cornerRadius(8)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                } header: {
                    Label("Drinks", systemImage: "cup.and.saucer.fill")
                }
                .padding(.leading, 9)
                
                Section {
                    ForEach(mainCourse, id: \.id) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .cornerRadius(8)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                } header: {
                    Label("Main Course", systemImage: "fork.knife")
                }
                
                Section {
                    ForEach(breakfast, id: \.id) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .cornerRadius(8)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                } header: {
                    Label("Breakfast", systemImage: "frying.pan.fill")
                }
                
                Section {
                    ForEach(dessert, id: \.id) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .cornerRadius(8)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                } header: {
                    Label("Dessert", systemImage: "birthday.cake.fill")
                }
            }
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    MenuListView()
}


