//
//  ShapesBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/1/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.green)
//            .foregroundColor(.pink)
//            .stroke(Color.blue)
//            .stroke(Color.blue,lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.1, to: 0.9)
//            .stroke(Color.purple,lineWidth: 40)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
