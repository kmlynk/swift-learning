//
//  ToDo_ListApp.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDo_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
