//
//  DessertView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/12/25.
//

import SwiftUI

struct DessertView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showVegetarianOnly = false
    
    let dessertItems = [
        MenuItem(name: "Chocolate Lava Cake", description: "Rich and decadent chocolate cake with molten center", price: 7.99, isVegetarian: false),
        MenuItem(name: "Tiramisu", description: "Classic Italian dessert with coffee-soaked ladyfingers and mascarpone", price: 6.99, isVegetarian: false),
        MenuItem(name: "Creme Brulee", description: "Rich vanilla custard topped with caramelized sugar", price: 6.99, isVegetarian: false),
        MenuItem(name: "Apple Pie", description: "Traditional apple pie with flaky crust and cinnamon", price: 5.99, isVegetarian: true),
        MenuItem(name: "Cheesecake", description: "New York style cheesecake with berry compote", price: 8.99, isVegetarian: false),
        MenuItem(name: "Ice Cream Sundae", description: "Vanilla ice cream with hot fudge, whipped cream, and cherry", price: 4.99, isVegetarian: false),
        MenuItem(name: "Chocolate Mousse", description: "Light and airy chocolate mousse with fresh berries", price: 6.49, isVegetarian: false),
        MenuItem(name: "Banana Foster", description: "Caramelized bananas with vanilla ice cream and rum sauce", price: 7.49, isVegetarian: true)
    ]
    
    var filteredItems: [MenuItem] {
        showVegetarianOnly ? dessertItems.filter { $0.isVegetarian } : dessertItems
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "birthday.cake")
                    .foregroundColor(.pink)
                    .font(.system(size: 32))
                Text("Dessert Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            HStack {
                Button("Back to Menu") {
                    dismiss()
                }
                .padding(.leading)
                
                Spacer()
                
                Toggle("Show Vegetarian Only", isOn: $showVegetarianOnly)
                    .padding(.trailing)
            }
            
            List(filteredItems) { item in
                MenuItemView(item: item)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    DessertView()
}
