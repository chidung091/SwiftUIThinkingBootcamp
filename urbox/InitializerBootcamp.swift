//
//  InitializerBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/6/22.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .orange {
            self.title = "Orange"
            self.backgroundColor = .orange
        }
        else {
            self.title = "Other"
            self.backgroundColor = .red
        }
    }
    
    enum Fruit {
        case apple
        case orange
        case peach
    }
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootcamp( count: 35, fruit: .peach)
    }
}
