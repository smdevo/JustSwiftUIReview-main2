//
//  ListB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/05/24.
//

import SwiftUI


enum Product: Hashable {
    typealias RawValue = String
    
    
    case vegetable(name: String)
    case fruit(name: String)
    
    
    static var fruits: [Product] = [
        .fruit(name: "Apple"),
        .fruit(name: "banana"),
        .fruit(name: "peach"),
        .fruit(name: "orange")
    
    ]
    
    static var vegetables: [Product] = [
        .vegetable(name: "potato"),
        .vegetable(name: "tomato"),
        .vegetable(name: "onion"),
        .vegetable(name: "cabbage")
    
    ]
    
}


struct ListB: View {
    
    //MARK: prooperties
    
    
     @State var vegeis: [Product] = Product.vegetables
     @State var fruits: [Product] = Product.fruits
    
    
    
    
    //MARK: Views
    
    var body: some View {
        
        
        
        
        NavigationView {
            List {
                
                Section {
                    
                    ForEach(fruits, id: \.self) { fruit in
                       
                        switch fruit {
                            
                        case .fruit(let name):
                            Text(name.capitalized)
                        default:
                            EmptyView()
                        
                        }
                        
                    }
                    .onDelete(perform: deleteItFromFruits)
                    .onMove(perform: moveFruits)
                    //.listRowBackground(Color.red)
                    
                    
                } header: {
                    Text("Fruits")
                }//SectionFruit

                
                Section {
                    ForEach(vegeis, id: \.self) { vegy in
                        
                        switch vegy {
                        case .vegetable(let name):
                            Text(name.capitalized)
                        default:
                            EmptyView()
                        }
                        
                    }
                    .onDelete(perform: deleteItFromVegeis)
                    .onMove(perform: moveVegies)
                    
                } header: {
                     Text("Vegetables")
                        .foregroundColor(.green)
                }//SectionVegies
                

                
                
                
                
            }//List
            .navigationTitle("All Products")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: trailingAddButton)
            .listStyle(GroupedListStyle())
            .accentColor(.red)
            
            
            
        }//NaVView
        
    }//body
    
    var trailingAddButton: some View {
        
        Button("Add") {
            
            vegeis.append(.vegetable(name: "cucumber"))
            fruits.append(.fruit(name: "strawberry"))
            
        }
        
    }
    
    
    
    
    //MARK: functions
    
    func deleteItFromVegeis(indexSet: IndexSet) {
        
        vegeis.remove(atOffsets: indexSet)
        
    }
    
    func deleteItFromFruits(indexSet: IndexSet) {
        
        fruits.remove(atOffsets: indexSet)
        
    }
    
    func moveFruits(indexSet: IndexSet, into: Int) {
        
        fruits.move(fromOffsets: indexSet, toOffset: into)
        
    }
    
    func moveVegies(indexSet: IndexSet, into: Int) {
        
        vegeis.move(fromOffsets: indexSet, toOffset: into)
        
    }
    
    
    
}

struct ListB_Previews: PreviewProvider {
    static var previews: some View {
        ListB()
    }
}
