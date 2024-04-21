//
//  ContentViewModel.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import FirebaseAuth
import Foundation

class ContentViewModel: ObservableObject {
    @Published var currentUserID: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    // Check if user logged in or not
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            self?.currentUserID = user?.uid ?? ""
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
