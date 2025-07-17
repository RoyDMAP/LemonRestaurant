//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/9/25.
//

import SwiftUI

struct MenuView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showVegetarianOnly = false
    @State private var showDesserts = false
    @State private var showPremiumOnly = false
    
    let menuItems = [
        MenuItem(name: "Burgers", description: "Juicy and fresh", price: 15.99),
        MenuItem(name: "HotDogs", description: "Chewy and delicious", price: 3.99),
        MenuItem(name: "Fries", description: "Crispy and golden brown", price: 2.49, isVegetarian: true),
        MenuItem(name: "Salad", description: "Fresh greens and your choice of dressing", price: 13.49, isVegetarian: true),
        MenuItem(name: "Corn Dogs", description: "Sweet and juicy corn on a stick", price: 4.29),
        MenuItem(name: "Vegetable Lasagna", description: "Layers of pasta with fresh vegetables,ricotta, and marinara sauce",price: 14.99, isVegetarian: true),
        MenuItem(name: "Beef Tacos",description: "Three soft tacos with seasoned ground beef, lettuce, tomatoes, and cheese",price: 12.99),
        MenuItem(name: "Eggrolls",description: "Crispy fried rolls filled with cabbage, carrots, and your choice of protein",price: 8.99)
    ]
    
    let vegetarianItems: Set<String> = ["Fries", "Salad", "Pizza"]
    
    var filteredItems: [MenuItem] {
        showVegetarianOnly ? menuItems.filter { $0.isVegetarian } : menuItems
    }
    //COMPUTED PROPERTY
    var averagePrice: Double {
        let total = filteredItems.map{$0.price}.reduce(0, +)
        return total / Double(filteredItems.count)
    }
    
    var filteredMenu:[MenuItem] {
        showPremiumOnly ? menuItems.filter{$0.price > 10} : menuItems
    }
    
    var premiumItemsCount: Int {
        let total = filteredItems.filter({$0.price > 10}).count
        return total
    }
    
    var regularItems: Int {
        var counter = 0
        
        menuItems.forEach {item in
            if item.price < 10 {
                counter += 1
            }
        }
        return counter
    }
    
    var totalPrice: String {
        let total = menuItems.reduce(0){$0 + $1.price}
        
        return String(format: "%.2f", total)
    }

    
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            Text("Average price: $\(averagePrice, specifier: "%.2f")")
                .font(.footnote)
                .foregroundColor(.secondary)
            
            Button("View Desserts") {
                showDesserts.toggle()
            }
            .padding()
                .background(Color.green.opacity(0.4))
                .foregroundColor(.black)
                .cornerRadius(12)
            
            .sheet(isPresented: $showDesserts) {
                DessertItemView()
            }
            Toggle("Show Vegetarian Only", isOn: $showVegetarianOnly)
                .padding(.horizontal)
            
            List(filteredItems) { item in
                MenuItemView(item: item)
            }
            Text("Premium: \(premiumItemsCount) | Regular: \(regularItems) | Total: $ \(totalPrice)")
                .font(.subheadline)
                .padding()
                .background(Color.yellow.opacity(0.2))
                .cornerRadius(8)
        }
    }
}
#Preview {
    MenuView()
}
