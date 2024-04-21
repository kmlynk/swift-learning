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
                HeaderView(
                    title: "ToDo List",
                    subtitle: "Stop Procrastination",
                    angle: 15,
                    background: .blue)
                
                // Login Form
                Form{
                    TextField("E-Mail Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    ToDoListButton(
                        title: "Login",
                        background: .blue
                    ) {
                        // Attempt to Login
                    }
                    .padding(0.0)
                }
                .offset(y: -50)
                
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
