//
//  ScrollViewBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/7/22.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<30)  { index in
                    Rectangle()
                        .fill(Color.pink)
                        .frame(height: 200)
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
