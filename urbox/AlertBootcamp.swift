//
//  AlertBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 07/09/2022.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Click here1!") {
                    alertType = .success
                    showAlert.toggle()
                }
                Button("Click here2!") {
                    alertType = .error
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
    //            Alert(title: Text("There was an error!"))
                getAlert()
        })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("Error"))
        case .success:
            return Alert(title: Text("Success"),
                         message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
//        return Alert(
//            title: Text("Hi"),
//            message: Text("Import"),
//            primaryButton: .destructive(Text("Delete"),action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
