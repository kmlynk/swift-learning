//
//  NewItemView.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    
    var body: some View {
        Text("New Item View")
    }
}

#Preview {
    NewItemView()
}
