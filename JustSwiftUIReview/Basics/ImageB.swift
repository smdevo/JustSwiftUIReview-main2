//
//  ImageB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct ImageB: View {
    var body: some View {
        
     
            
//            Image("post2")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 300, height: 200)
//                //.cornerRadius(20)
//                //.clipShape(Circle())
        
        Image("im6")
            .renderingMode(.original)
            .resizable()
            .frame(width: 350, height: 200)
            .clipShape(Circle())
            
        
        
       
    }
    
}

struct ImageB_Previews: PreviewProvider {
    static var previews: some View {
        ImageB()
            
    }
}
