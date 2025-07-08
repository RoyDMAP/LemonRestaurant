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
    @State private var reservationDate = Date()
    @State private var allergyNotes = ""
    @State private var showSummary = false
    var body: some View {
        NavigationStack {
            Image("littleLemonLogo")
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Enter your name", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    if !Validation.isValidName(userName){
                        Text("Please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)
                    if guestCount > 8 {
                        Text("For parties larger than 8, we will call to confirm")
                            .foregroundColor(.orange)
                            .font(.caption)
                    } else if guestCount >= 5 {
                        Text("For large parties, please arrive 10 minutes early")
                            .foregroundColor(.orange)
                            .font(.caption)
                    }
                    DatePicker("Date", selection: $reservationDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                    if reservationDate < Date() {
                        Text("Please select a valid date")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    TextField("Allergy notes", text: $allergyNotes)
                    
                }
                Section {
                    Button("Confirm Reservation") {
                        if !userName.isEmpty {
                            showSummary=true
                        }
                        print("Reservation made for \(userName) with \(guestCount) guests")
                    }
                    .disabled(userName.isEmpty)
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(
                            name: userName,
                            date: reservationDate,
                            guests: guestCount,
                            allergyNotes: allergyNotes
                        )
                    }
                }
            }
        }
            .navigationTitle("Book a table")
    }
}

#Preview {
    ReservationForm()
}
