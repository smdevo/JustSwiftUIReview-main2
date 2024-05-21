//
//  IconsB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct IconsB: View {
    var body: some View {
        
        Image(systemName: "person.fill.badge.plus")
            .resizable()
            .renderingMode(.original)
            .frame(width: 200, height: 200)
            .foregroundColor(.gray)
        
        
        
        
//        Image(systemName: "creditcard.circle.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color("CustomColor"))
        
        
        
        
//        Image(systemName: "camera.macro")
//            .resizable()
//            .scaledToFit()
//            .foregroundColor(.clear) // Set foreground color to clear
//            .overlay(
//                LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .top, endPoint: .bottom)
//                    .mask(Image(systemName: "camera.macro"))
//            )
//            .font(.system(size: 200))
        
        
//        Image(systemName: "camera.macro")
//            .resizable()
//            //.aspectRatio(contentMode: .fit)
//
//            .scaledToFit()
//            .foregroundColor(
//                .red
//            )
////            .font(.title)
////            .fontWeight(.bold)
//            //.font(.system(size: 200))
//            .frame(width: 200, height: 200)
        
    }
}

struct IconsB_Previews: PreviewProvider {
    static var previews: some View {
        IconsB()
    }
}
