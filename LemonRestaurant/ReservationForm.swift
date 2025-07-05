//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/4/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 70)
                Section("Reservation Details") {
                    TextField("Enter your name", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    if userName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)
                    
                    if guestCount > 5 {
                        Text("For large parties, we will contact you")
                            .foregroundColor(.orange)
                            .font(.caption)
                    }
                }
                Section {
                    Button("Confirm Reservation") {
                        print("Reservation made for \(userName) with \(guestCount) guests")
                    }
                    .disabled(userName.isEmpty)
                }
            }
            .navigationTitle("Restaurant Reservation")
        }
    }
}

#Preview {
    ReservationForm()
}
