//
//  AnimationBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 29/07/2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation.default.repeatCount(5)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 100: 50)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100: 300, height: isAnimated ? 100:  300)
                .rotationEffect(Angle(degrees: isAnimated ? 360: 0))
                .offset(y: isAnimated ? 300: 50)
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
