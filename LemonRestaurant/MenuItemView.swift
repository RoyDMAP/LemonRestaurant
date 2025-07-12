//
//  MenuItemView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/12/25.
//

import SwiftUI

struct MenuItemView: View {
    let item: MenuItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(item.name)
                    .font(.headline)
                Spacer()
                if item.isVegetarian {
                    PremiumBadge()
                }
            }
            
            Text(item.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text("$\(item.price, specifier: "%.2f")")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
        }
        .padding(.vertical, 4)
    }
}
//#Preview {
//    MenuItemView()
//}
