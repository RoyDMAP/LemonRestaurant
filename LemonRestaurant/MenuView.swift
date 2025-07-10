//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/9/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    @State private var showVegetarianOnly = false
    // create a dictionary dish:price (6 items)
    
    let menuItems = [
        "Burgers": 15.99,
        "HotDogs": 3.99,
        "Fries": 2.49,
        "Salad": 13.49,
        "Corn Dogs": 4.29
    ]
    
    let vegetarianItems: Set<String> = ["Fries", "Salad", "Pizza"]
    
    var filteredItems: [(key: String, value: Double)] {
        let sorted = menuItems.sorted(by: {$0.key < $1.key})
        if showVegetarianOnly {
            return sorted.filter { vegetarianItems.contains($0.key) }
        }
        return sorted
    }
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            Text("Vegetarian dishes: \(vegetarianItems.count)")
                .font(.subheadline)
                .foregroundColor(.green)
            
            VStack(spacing: 20){
                Toggle("Show a special text",isOn: $showMessage)
                
                Toggle("Show Vegetarian Only", isOn: $showVegetarianOnly)
                
                if showMessage {
                    Text("You unlocked a surprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                }
            }
                
            List{
                ForEach(filteredItems, id: \.key){
                    (name,price) in
                    HStack{
                        VStack(alignment: .leading){
                            Text(name)
                                .font(.headline)
                            Text("$\(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        
                        
                        if price > 10{
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("Premium")
                                    .font(.caption)
                            }
                            .font(.caption)
                            .foregroundColor(.orange)
                            .padding(6)
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(6)
                            
                        }
                        
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
