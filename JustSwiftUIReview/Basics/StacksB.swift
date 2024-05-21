//
//  StacksB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct StacksB: View {
    var body: some View {
        
        
        ZStack {
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 190, height: 190)
            Rectangle()
                .fill(Color.pink)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            
            
            
        }
        
        
        
        
        
    
//        VStack {
//
//            ScrollView(.horizontal, showsIndicators: true) {
//                HStack(spacing: 20) {
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 200, height: 200)
//
//                }
//                .frame(maxHeight: UIScreen.main.bounds.height / 2)
//            }
//
//
//            ScrollView(.horizontal, showsIndicators: true) {
//                HStack(spacing: 20) {
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 200, height: 200)
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 200, height: 200)
//
//                }
//                .frame(maxHeight: UIScreen.main.bounds.height / 2)
//            }
//
//
//
//
//        }
//    .frame(maxHeight: .infinity)
//        .background(Color.brown)
        
        
        
        
        
        
        
        
        
//        ScrollView(.vertical, showsIndicators: true) {
//
//
//            VStack(alignment: .leading, spacing: 100) {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 100,height: 100)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100,height: 100)
//
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 100,height: 100)
//
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 100,height: 100)
//
//                Rectangle()
//                    .fill(.purple)
//                    .frame(width: 100,height: 100)
//
//                Rectangle()
//                    .fill(.gray)
//                    .frame(width: 100,height: 100)
//
//
//            }
//            .frame(maxWidth: .infinity)
//            .background(Color(uiColor: UIColor.systemGray6))
//        }
        
        .background(Color(uiColor: UIColor.systemGray6))
        
    
        
        
        
    }
}

struct StacksB_Previews: PreviewProvider {
    static var previews: some View {
        StacksB()
    }
}
