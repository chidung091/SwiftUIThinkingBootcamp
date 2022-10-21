//
//  DocumentationBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 14/09/2022.
//

import SwiftUI

struct DocumentationBootcamp: View {
    // MARK: PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing:
                                    Button("ALERT", action: {
                showAlert.toggle()
            })
            )
            .alert(isPresented: $showAlert, content: {
                getAlert(text: "This is the alert!")
            })
        }
    }
    // MARK: FUNCTION
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
