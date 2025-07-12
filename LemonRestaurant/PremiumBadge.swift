//
//  PremiumBadge.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/12/25.
//

import SwiftUI

struct PremiumBadge: View {
    
    var body: some View {
        HStack{
            Image(systemName: "leaf.fill")
            Text("Premium")
        }
        .font(.caption)
        .foregroundColor(.orange)
        .padding(6)
        .background(Color.orange.opacity(0.1))
        .cornerRadius(6)
    }
}

#Preview {
    MenuView()
}
