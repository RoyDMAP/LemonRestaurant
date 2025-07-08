//
//  ReservationSummaryView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/7/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    let name: String
    let date: Date
    let guests: Int
    let allergyNotes: String
    
    var body: some View {
        return VStack(alignment: .leading, spacing: 16) {
            Text("Reservation Summary")
                .font(.title)
            
            Text("Thank you, \(name), your reservation is confirmed for \(guests) people")
                .font(.headline)
                .foregroundColor(.green)
            
            if !allergyNotes.isEmpty {
                Text("Note: We will accommodate the following allergies: \(allergyNotes)")
                    .font(.body)
                    .foregroundColor(.orange)
                    .padding(.top, 8)
            }

            VStack(alignment: .leading, spacing: 8) {
                Text("Reservation Details")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.top, 16)
                
                Text("Name: \(name)")
                Text("Date: \(formattedDate(date: date))")
                Text("Guests: \(guests)")
                if !allergyNotes.isEmpty {
                    Text("Allergy Notes: \(allergyNotes)")
                }
            }
            .padding(.leading, 8)
        }
        .padding()
    }
    
    func formattedDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: date)
    }
}

//#Preview {
//    ReservationSummaryView()
//}
