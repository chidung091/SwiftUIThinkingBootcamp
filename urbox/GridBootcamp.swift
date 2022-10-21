//
//  GridBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/8/22.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [], content: {
                ForEach(0..<40) { index in
                    Rectangle()
                        .frame(height: 50)
                }
            })
                
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
