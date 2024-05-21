//
//  GradientsB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct GradientsB: View {
    var body: some View {
       
        RoundedRectangle(cornerRadius: 20)
            .fill(
            
//                LinearGradient(colors: [.red, .orange, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                
//                RadialGradient(colors: [Color("CustomColor"),Color("CustomColor").opacity(0.1)], center: .topLeading, startRadius: 50, endRadius: 300)
                
                AngularGradient(colors: [Color("CustomColor"),Color("CustomColor").opacity(0.1)], center: .top)
            
            )
            .frame(width: 200, height: 100)
        
        
        
        
    }
}

struct GradientsB_Previews: PreviewProvider {
    static var previews: some View {
        GradientsB()
    }
}
