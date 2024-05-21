//
//  ScrollViewB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct ScrollViewB: View {
    var body: some View {
        ScrollView {
            
            LazyVStack {
                
                ForEach(0..<20) { i in
                    
                    ScrollView(.horizontal) {
                        
                        LazyHStack {
                        
                           ForEach(0..<20) {_ in
                            
                          
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 100,height: 100)
                                    .shadow(radius: 10)
                                    .padding()
                                    
                                    
                                
                                
                            }
                        }
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            
            
        }
    }
}

struct ScrollViewB_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewB()
    }
}
