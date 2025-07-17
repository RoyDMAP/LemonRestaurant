//
//  CustomerSummaryView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/16/25.
//

import SwiftUI
/*
 struct CustomerSummaryView: View {
 let customer: Customer
 
 var body: some View {
 VStack{
 Text("Customer Information")
 .font(.title)
 
 Text("Name: \(customer.name)")
 Text("Email: \(customer.email)")
 Text("Favorite Dish: \(customer.favoriteDishes)")
 }
 .padding()
 }
 }
 
 #Preview {
 let sampleCustomer = Customer(
 name: "Roy Dimapilis",
 email: "roy@gmail.com",
 favoriteDish: "Burgers"
 )
 
 CustomerSummaryView(customer: sampleCustomer)
 }
 */
struct CustomerSummaryView: View {
    @State private var customer = Customer (
        name: "Roy",
        email: "roy@example.com",
        isLoyaltyMember: false,
        favoriteDishes: ["Pizza", "Pasta"]
    )
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Customer Summary")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding(.bottom, 8)
            
            Text("Name: \(customer.name)")
                .font(.headline)
            
            Text("Email: \(customer.email)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if customer.isLoyaltyMember == true {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("⭐️ Loyalty Member")
                        .font(.subheadline)
                }
            }
            
            Text("Favorites: \(customer.favoriteDishes.joined(separator: ", "))")
                .font(.body)
                
            
            Text(customer.customerSummary())
                .font(.body)
                .foregroundColor(.secondary)
            
            Toggle("Loyalty Member", isOn: $customer.isLoyaltyMember)
                .font(.subheadline)
                
        }
        .padding()
    }
}
#Preview {
    CustomerSummaryView()
}
