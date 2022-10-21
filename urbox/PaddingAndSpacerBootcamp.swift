//
//  PaddingAndSpacerBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/6/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
             Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text  to the leading edge.")
        }
        .background(Color.blue)
        .padding()
        .background(Color.red)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
