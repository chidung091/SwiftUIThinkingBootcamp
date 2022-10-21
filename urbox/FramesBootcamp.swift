//
//  FramesBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/4/22.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text("Địt mẹ mày! Đụ mẹ mày!")
            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .topLeading)
            .frame(maxWidth: .infinity, minHeight: 100, idealHeight: 0, maxHeight: 100, alignment: .center)
            .background(Color.red)
    }
}

struct FramesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootcamp()
    }
}
