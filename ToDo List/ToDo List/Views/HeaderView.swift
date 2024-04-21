//
//  HeaderView.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 10.0)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle")
}
