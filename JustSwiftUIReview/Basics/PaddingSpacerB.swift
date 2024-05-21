//
//  PaddingSpacerB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct PaddingSpacerB: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 20) {
            
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom,20)
            
            
            Text("This will be shown in front of you and that does mean I am trying to learn how to do with paddings,This will be shown in front of you and that does mean I am trying to learn how to do with paddings")
                .padding(.bottom)
        
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(radius: 10,x: 10,y: 10)
        )
        .padding(20)
        
        
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.largeTitle)
//            .fontWeight(.bold)
           // .frame(maxWidth: .infinity,alignment: .leading)
            //.background(.red)
           // .padding(.leading,30)
        
        
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.green)
//            .padding()
//            .background(Color.blue)
//            .padding(.leading,30)
//            .background(Color.orange)
            
    }
}

struct PaddingSpacerB_Previews: PreviewProvider {
    static var previews: some View {
        PaddingSpacerB()
    }
}
