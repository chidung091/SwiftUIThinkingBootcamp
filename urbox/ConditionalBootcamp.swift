//
//  ConditionalBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 29/07/2022.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            if showCircle {
                Circle().frame(width: 100, height: 100)
            }
            
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
