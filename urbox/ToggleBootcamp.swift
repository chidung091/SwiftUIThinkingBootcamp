//
//  ToggleBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 13/09/2022.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online": "Offline")
            }
            Toggle(
                isOn: $toggleIsOn, label: {
                    Text("Đăng nhập bằng FaceID")
                }
            )
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal,50)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
