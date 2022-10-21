//
//  ColorsBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/1/22.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(Color(uiColor: UIColor.secondarySystemBackground))
            .fill(Color("CustomColor"))
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: .blue, radius: 10, x: 20, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
