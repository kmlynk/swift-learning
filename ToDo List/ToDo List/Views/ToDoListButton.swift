//
//  ToDoListButton.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct ToDoListButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        
    }
}

#Preview {
    ToDoListButton(title: "Title", background: .yellow) {
        // Action
    }
}
