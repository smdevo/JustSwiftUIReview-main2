//
//  BackgroundAndOverlayB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct BackgroundAndOverlayB: View {
    var body: some View {
        
        
        
        
        Circle()
            .fill(.green)
            .frame(width: 200, height: 200, alignment: .center)
            .overlay(alignment: .center) {
                Text("Hello hello Sir")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
            }
            .background(
            
                Circle()
                    .fill(.red)
                    .frame(width: 220,height: 220)
            
            )
            .overlay(alignment: .bottomTrailing) {
                Circle()
                    .frame(width: 50,height: 50)
                    .foregroundColor(.gray)
                    .overlay {
                        Circle()
                            .padding(5)
                            .foregroundColor(.blue)
                    }
            }
            .shadow(radius: 10,x: 10,y: 10)
        
        
        
        
        
        
        
        
        
        
//        Image("im4")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 200,height: 200)
//            .clipShape(Circle())
//            .background(
//
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing)
//                          )
//                    .frame(width: 220, height: 220, alignment: .center)
//
//
//            )
        
        
        
        
//
//        Image("im4")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 200,height: 200)
//            .clipShape(Circle())
//            .frame(width: 220, height: 220, alignment: .center)
//            .background(
//
//                LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing)
//
//            )
//            .clipShape(Circle())
            
        
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100, alignment: .center)
//            .padding()
//            .background(
//               // Color.red
////                LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing))
//            )
//
//            .background(
//
//                Circle()
//                    .fill(LinearGradient(colors: [.blue,.red], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 200, height: 200, alignment: .center)
//            )
        
        
    }
}

struct BackgroundAndOverlayB_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayB()
    }
}
