//
//  OnAppearBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 14/09/2022.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String = "This is Text"
    @State var count: Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
                myText = "New Text"
            })
            .onDisappear(perform: {
                myText = "Ending Text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
