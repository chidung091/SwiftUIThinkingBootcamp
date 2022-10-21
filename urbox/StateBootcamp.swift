//
//  StateBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/13/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Màu đỏ"
                        count = count + 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Màu tím"
                        count = count - 1
                    }
                }
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
