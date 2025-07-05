//
//  LoginView.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/5/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool // mandatory declare type
    @Binding var userName: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("littleLemonLogo")
                    .resizable().resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                TextField("Enter your name: ", text:$userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Log in"){
                    if userName == "Roy" {
                        isLoggedIn = true
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Login")
    }
}

#Preview {
//    LoginView()
}
