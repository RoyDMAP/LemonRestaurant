//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/4/25.
//

import SwiftUI

struct AboutView: View {
    @State private var orders = 10
    @State private var userName = ""
    @State private var reservations = 0
    var body: some View {
        VStack{
            Text("Welcome \(userName) to Little Lemon!")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFill()
                .frame(height: 80)
            Text("You've order \(orders) times")
            Button("Order again"){
                orders += 1
            }
                Button("Reset"){
                orders += 0
            }
            TextField("Enter your name",text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hi \(userName), you have order \(orders) reservasations today")
                .font(.caption)
                .padding()
            Button("Add people to the reservation"){
                
            }
            Text("Hi \(userName), you have order a table for \(reservations) today")
                .font(.title3)
                .padding()
            Text(String(repeating: "🍽️" , count: reservations))
            Stepper("Guests: \(reservations)", value: $reservations, in: 1...10)
        
        }
    }
}
            
#Preview {
    AboutView()
}
