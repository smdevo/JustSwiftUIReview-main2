//
//  ViewModelB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 15/05/24.
//
import SwiftUI


//MARK: Model
struct FruitModel: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
    
    static var zeroFruits: [FruitModel] =
    [
        FruitModel(name: "Apple", count: 10),
        FruitModel(name: "Orange", count: 43),
        FruitModel(name: "Peach", count: 34),
        FruitModel(name: "Banana", count: 23),
        FruitModel(name: "Pineapple", count: 33),
        FruitModel(name: "Cherry", count: 20),
        FruitModel(name: "Melon", count: 2)
    ]
}


//MARK: ViewModel

class FruitViewModel: ObservableObject {
    
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    
    
    init() {
        gettingData()
    }
    
    
    
    func gettingData() {
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            
            self.fruits = FruitModel.zeroFruits
            
            self.isLoading = false
            
        })
        
        
    }
    
    
    func deleteData(indexSet: IndexSet) {
        
        fruits.remove(atOffsets: indexSet)
        
    }
    
}





//MARK: View
struct ViewB: View {
    
    
    //@StateObject    -> USE this for main (initial) Views (Reloading only view again)
    //@ObservedObject -> USE this for subViews             (Reloading view and data again)
    
    
    
   // @ObservedObject var fruitsViewModel: FruitViewModel = FruitViewModel()
    @StateObject var fruitsViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        
        
        NavigationView {
            List {
              
                if fruitsViewModel.isLoading {
                    
                    ProgressView()
                    
                }
                
                ForEach(fruitsViewModel.fruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit.name)
                        Spacer()
                        Text("\(fruit.count)")
                    }
                    .padding(.horizontal,30)
                    .padding(.vertical)
                    
                }//For
                .onDelete(perform: fruitsViewModel.deleteData)
                
            }//List
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
            
                NavigationLink {
                    
                NextScreenView(vm: fruitsViewModel)
                
                } label: {
                   Image(systemName: "arrow.right")
                }
              
            
            )
            
            //.onAppear(perform: fruitsViewModel.gettingData)
            
        }//NAV
        
    }//body
}





struct NextScreenView: View {
    
    @Environment(\.presentationMode) var pM
    
    @ObservedObject var vm: FruitViewModel
    
    var body: some View {
        
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button {
                    pM.wrappedValue.dismiss()
                } label: {
                    Text("Go Back")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                Spacer ()
                
                ForEach(vm.fruits) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                
                Spacer()
                
            }
            
            

        }
        
    }
    
}


struct ViewModelB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
