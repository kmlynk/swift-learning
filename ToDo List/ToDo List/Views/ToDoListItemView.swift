//
//  ToDoListItemView.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewModel()
    
    var body: some View {
        Text("ToDo List Item View")
    }
}

#Preview {
    ToDoListItemView()
}
