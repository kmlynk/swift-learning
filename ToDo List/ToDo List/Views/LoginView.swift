//
//  LoginView.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
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
                    TextField("E-Mail Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
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
