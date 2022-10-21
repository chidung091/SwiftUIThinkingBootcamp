//
//  PopoverBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 07/09/2022.
//

// sheets
// animations
// transitions

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
        }
        // METHOD 1: SHEET
        .sheet(isPresented: $showNewScreen, content: {
            NewScreen()
        })
        // METHOD 2: TRANSITIOn
//        if showNewScreen {
//            NewScreen()
//                .padding(.top,100)
//                .transition(.move(edge: .bottom))
//        }
        // METHOD 3: OFFSET
        
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            },
                   label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
