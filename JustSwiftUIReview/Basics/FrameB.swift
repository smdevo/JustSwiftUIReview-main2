//
//  FrameB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct FrameB: View {
    var body: some View {
        
                
//        ZStack {
//
//
//
//
//
//
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.red)
////                .frame(minWidth: 10, idealWidth: 200, maxWidth: .infinity, minHeight: 20, idealHeight: 400, maxHeight: .infinity, alignment: .center)
////                .background(Color.green)
//        }
//        .frame(maxWidth: .infinity,maxHeight: .infinity)
//        .background(Color.green)
            
           
        
        
        
//        Text("Hello Sir")
//            .background(Color.green)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
//            .background(Color.red)
        
            
        Text("Anothr text")
            .background(Color.red)
            .frame(width: 200)
            .background(Color.green)
            .frame(height: 100)
            .background(Color.gray)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(.blue)
            .frame(maxHeight: .infinity)
            .background(.orange)
        
            
        
        
       
        
        
        
            //.frame(width: 200, height: 100, alignment: .topLeading)
            //.background(Color.green)
    }
}

struct FrameB_Previews: PreviewProvider {
    static var previews: some View {
        FrameB()
    }
}
