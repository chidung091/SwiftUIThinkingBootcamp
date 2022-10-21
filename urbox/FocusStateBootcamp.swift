//
//  FocusStateBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 15/09/2022.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameInFocus: Bool
    
    @State private var username: String = ""
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($usernameInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("TOGGLE FOCUS STATE") {
                usernameInFocus.toggle()
            }
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.usernameInFocus = true
            }
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
