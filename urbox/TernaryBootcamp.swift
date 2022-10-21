//
//  TernaryBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 29/07/2022.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STRATING STATE": "ENDING STATE")
            RoundedRectangle(cornerRadius: isStartingState ? 20: 15)
                .fill(isStartingState ? Color.red: Color.blue)
                .frame(width: isStartingState ? 200: 150, height: isStartingState ? 100: 150)
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
