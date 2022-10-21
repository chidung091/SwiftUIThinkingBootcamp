//
//  ButtonBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 6/8/22.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "Title"
    var body: some View {
        VStack (spacing: 20){
            Text(title)
            Button("Press me") {
                self.title = "Changed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "2nd change"
            }, label: {
                Text("Don't Press".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue.cornerRadius(10).shadow(radius: 10))
            })
            
            Button(action: {
                self.title = "Nút 3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75, alignment: .center)
                    .shadow(radius: 10)
                    .overlay(Image(systemName: "heart.fill").font(.largeTitle).foregroundColor(.black))
            })
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
