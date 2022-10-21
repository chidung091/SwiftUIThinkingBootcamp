//
//  PickerBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 13/09/2022.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    

    var body: some View {
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index]).tag(filterOptions[index])
                }
            }
        )
        .pickerStyle(SegmentedPickerStyle())
        .background(Color.red)
//        Picker(
//            selection: .constant(1),
//            label: HStack {
//                Text("Filter:")
//                Text(selection)
//            },
//            content: {
//                Text("1").tag(1)
//                Text("2").tag(2)
//            }
//        )
//        .pickerStyle(MenuPickerStyle())
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection, label: Text("Picker"), content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                }
//            )
//            .pickerStyle(WheelPickerStyle())
//            .background(Color.gray.opacity(0.5))
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
