//
//  StateB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct StateB: View {
    
    @State var title: String = "Title"
    
    @State var count: Int = 0
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        
        
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            
            
            VStack {
                
                Text(title)
                    .font(.system(size: 30, weight: .bold, design: .default))
                
                Text("Count: \(count)")
                    .font(.largeTitle)
                    .underline()
                
                
                
                HStack(spacing: 30) {
                    
                    Button("Increment") {
                        backgroundColor = .red
                        title = "Button 1 was pressed"
                        count += 1
                    }
                    
                    
                    
                    Button("Decrement") {
                        backgroundColor = .purple
                        title = "Button 2 was pressed"
                        count -= 1
                    }
                    
                }
                .padding(.vertical)
                
                
                
            }
            .foregroundColor(.white)
            
            
            
            
        }
    }
}

struct StateB_Previews: PreviewProvider {
    static var previews: some View {
        StateB()
    }
}
