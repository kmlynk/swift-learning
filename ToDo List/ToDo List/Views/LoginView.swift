//
//  LoginView.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                // Header
                HeaderView()
                
                // Login Form
                Form{
                    TextField("E-Mail Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Login Function
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Login")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    .padding(0.0)
                }
                
                // Create Account
                VStack {
                    Text("You have no account?")
                    
                    // Go to registeration
                    NavigationLink("Create an account", destination: RegisterView())
                }
            }
            .padding(.bottom, 10.0)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}