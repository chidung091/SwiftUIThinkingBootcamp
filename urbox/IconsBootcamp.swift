//
//  IconsBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/2/22.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "paperplane.fill")
//            .font(.caption)
//            .font(.system(size: 200))
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundColor(.red)
            .frame(width: 300, height: 300, alignment: Alignment.center)
            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
