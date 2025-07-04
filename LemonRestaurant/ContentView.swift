//
//  ContentView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/4/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "pencil")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Text("Hello, Cohort 1!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                NavigationLink(destination:
                    AboutView()) {
                    Text("Go to About")
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}

