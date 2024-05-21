//
//  ConditionalB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct ConditionalB: View {
    
    
    @State var showCircle: Bool = false
    
    @State var isLoading: Bool = false
    
    
    var body: some View {
        
        
        VStack {
            
            Button("Load: \(isLoading.description)") {
                
                isLoading.toggle()
                
            }
            if isLoading {
                
                ProgressView()
                
            }
            
            
            Spacer()
        }
        
        
        
        
        
//        VStack{
//
//            Button("Circle: \(showCircle.description)") {
//
//                showCircle.toggle()
//
//
//            }
//
//            if showCircle {
//
//
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 200, height: 200)
//            }
//
//          Spacer()
//        }
        .font(.largeTitle)
    }
}

struct ConditionalB_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalB()
    }
}
