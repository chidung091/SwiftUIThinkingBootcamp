//
//  ForEachBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/6/22.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Taylor", "Switt"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                ZStack {
                    Rectangle()
                        .frame(width: 70, height: 30)
                    Text("\(data[index]):\(index)")
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
