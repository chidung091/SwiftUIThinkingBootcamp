//
//  GradientsBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/1/22.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .leading, startRadius: 5, endRadius: 100)
                AngularGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .center, startAngle: .zero, endAngle: .degrees(150))
            )
            .frame(width: 300, height: 300, alignment: .center)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
