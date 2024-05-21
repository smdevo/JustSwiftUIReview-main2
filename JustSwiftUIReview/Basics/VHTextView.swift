//
//  VHTextView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct VHTextView: View {
    var body: some View {
        
            
            Text("Hello, World!,Hello, World!,Hello, World!,Hello, World!,Hello, World!,Hello, World!Hello, World!Hello, World!")
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.leading)
                .frame(width: 200,height: 100,alignment: .center)
                .minimumScaleFactor(10)
                //.opacity(0.5)
                
            
            
        
        
        
        
       
    }
}

struct VHTextView_Previews: PreviewProvider {
    static var previews: some View {
        VHTextView()
    }
}
