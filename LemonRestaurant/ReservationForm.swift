//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/4/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section("Reservation Details") {
                    TextField("Enter your name", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                }
                Section {
                    Button("Make Reservation") {
                        // Action for making reservation
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
