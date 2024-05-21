//
//  GridB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct GridB: View {
    
    
    let columns: [GridItem] = [
        
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        GridItem(.fixed(60), spacing: nil, alignment: nil)
        
    ]
    
    
    
    var body: some View {
        
        
        
        ScrollView {
            
            
            LazyVGrid(columns: columns, spacing: 20, pinnedViews: [.sectionHeaders]) {
                
                
                Section {
                    
                    ForEach(0..<50) {_ in
                        
                        Rectangle()
                            .fill(.white)
                            .frame(height: 150)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        
                    }
                 
                    
                } header: {
                    
                    Text("Section1")
                        .font(.system(size: 30, weight: .bold, design: .default))
                    
                    
                }

                Section {
                    
                    ForEach(0..<40) {_ in
                        
                        
                        Rectangle()
                            .fill(.white)
                            .frame(height: 150)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        
                    }
                    
                    
                    
                } header: {
                    Text("Section2")
                        .font(.system(size: 30, weight: .bold, design: .default))
                }

                
                
                
                
            }
            .padding()
            
        }
        
       
        
        
        
    }
}

struct GridB_Previews: PreviewProvider {
    static var previews: some View {
        GridB()
    }
}
