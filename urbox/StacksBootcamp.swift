//
//  StacksBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/5/22.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.orange)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150, alignment: .center)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100, alignment: .center)
            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
