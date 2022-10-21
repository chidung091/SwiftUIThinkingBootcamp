//
//  NavigationViewBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 07/09/2022.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!", destination: MyOtherScreen())
                Text("Hello")
                Text("Hi")
            }
            .navigationTitle("Danh sách sinh viên")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(leading: Image(systemName: "person.fill"), trailing: NavigationLink(destination: MyOtherScreen(), label: {
                Image(systemName: "gear")
            }))
            .accentColor(.red)
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here!", destination: Text("3rd screen!"))
            }
        }
    }
}
struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
