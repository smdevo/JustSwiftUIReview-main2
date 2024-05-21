//
//  EnvironmentObjectB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 15/05/24.
//

import SwiftUI

//MARK: Model
struct AppleDevice: Hashable, Identifiable {
    
    let id: String = UUID().uuidString
    
    let name: String
    
    
    
    static var zeroDevices: [AppleDevice] =
    
    [
    AppleDevice(name: "Iphone"),
    AppleDevice(name: "Ipad"),
    AppleDevice(name: "MacBook"),
    AppleDevice(name: "IPod"),
    AppleDevice(name: "MagicMouse"),
    AppleDevice(name: "TreckPad")
    ]
}



//MARK: View Model

class MainViewModel: ObservableObject {
    
    @Published var datadevices: [AppleDevice] = []
    
    
    init() {
        getData()
    }
    
    func getData() {
        
        datadevices = AppleDevice.zeroDevices
        
    }
    
    func deleteData(indexSet: IndexSet) {
        datadevices.remove(atOffsets: indexSet)
    }
    
}




struct MainViewB: View {
    
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    
    var body: some View {
        
        
        NavigationView {
            
            List {
                
                ForEach(viewModel.datadevices) { device in
                    
                    
                    NavigationLink {
                        SecondEView(name: device.name)
                    } label: {
                        Text(device.name)
                    }

                    
                    
                    
                }
                .onDelete(perform: viewModel.deleteData)
                
            }
            .navigationTitle("Apple Devices")
            
        }
        .environmentObject(viewModel)
    }
}




struct SecondEView: View {
    
    
    let name: String
    
    var body: some View {
        
        ZStack {
            Color.green.ignoresSafeArea()
            
            NavigationLink {
                
                ThirdEView()
                
            } label: {
                Text("Third View ->")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .padding()
                    .padding(.horizontal)
                    .background(.purple)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
            }

            
        }
        .navigationTitle(name)
        
    }
    
    
}

struct ThirdEView: View {
    
    @EnvironmentObject var viewmodel: MainViewModel
    
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            
            
            ScrollView {
                VStack {
                    
                    ForEach(viewmodel.datadevices) { device in
                        Text(device.name)
                            .font(.largeTitle)
                            .padding()
                    }
                    
                }
            }
        }
    }
}






struct EnvironmentObjectB_Previews: PreviewProvider {
    static var previews: some View {
        MainViewB()
    }
}
