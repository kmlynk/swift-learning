//
//  RegisterViewModel.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class RegisterViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init () {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {
            [weak self] result, error in
            
            guard let userID = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userID)
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        // All fields should be filled
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields!"
            
            return false
        }
        
        // E-Mail should contain @ and . signs
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid E-Mail!"
            
            return false
        }
        
        // Password should be 8 character long or longer
        guard password.count >= 8 else {
            errorMessage = "Password must have 8 characters or more!"
            
            return false
        }
        
        return true
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(
                            id: id,
                            name: name,
                            email: email,
                            joinedAt: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
}
