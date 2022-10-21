//
//  EnvironmentObjectBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 14/09/2022.
//

import SwiftUI
// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}
struct EnvironmentObjectBootcamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item, viewModel: viewModel), label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("iOS Devices")
        }
    }
}

struct DetailView: View {
    let selectedItem: String
    @ObservedObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(
                destination: FinalView(viewModel: viewModel), label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(30)
                }
            )
        }
    }
}

struct FinalView: View {
    
    @ObservedObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}
struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
