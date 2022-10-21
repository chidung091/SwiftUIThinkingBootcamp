//
//  SliderBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 13/09/2022.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack {
            HStack {
                Text("Rating:")
                Text(String(format: "%.2f", sliderValue))
                    .foregroundColor(color)
            }
//            Slider(value: $sliderValue, in: 1...5)
//                .accentColor(.red)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title ")
                }
            )
                .accentColor(.green)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
