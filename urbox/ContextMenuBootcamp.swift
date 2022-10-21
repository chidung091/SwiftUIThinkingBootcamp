//
//  ContextMenuBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 13/09/2022.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color(#colorLiteral(red: 0.4383078516, green: 0.3785066903, blue: 0.9185903072, alpha: 1)))
        .contextMenu(menuItems: {
            Button(action: {
                
            }, label: {
                Label("Button 1", systemImage: "flame.fill")
            })
            
            Button(action: {
                
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                
            }, label: {
                HStack {
                    Text("Button 3")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
