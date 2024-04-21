//
//  LoginViewModel.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        // Firebase login 
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        // All spaces should be filled
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                errorMessage = "Please fill in all fields!"
                
                return false
            }
        
        // E-Mail should contain @ and . signs
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid E-Mail"
            
            return false
        }
        
        return true
    }
}
