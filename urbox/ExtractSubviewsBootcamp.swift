//
//  ExtractSubviewsBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/13/22.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            HStack {
                MyItem(title: "Apples", count: 10, color: Color.red )
                MyItem(title: "Oranges", count: 10, color: Color.orange)
                MyItem(title: "Banana", count: 10, color: Color.yellow)
            }
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
