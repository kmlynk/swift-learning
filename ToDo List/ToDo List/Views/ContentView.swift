//
//  ContentView.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
            // Logged in
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
