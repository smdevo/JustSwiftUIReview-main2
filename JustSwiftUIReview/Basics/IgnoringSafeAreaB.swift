//
//  IgnoringSafeAreaB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct IgnoringSafeAreaB: View {
    var body: some View {
        
       
        
        ScrollView {
            
            
            VStack {
                
                Text("All contents of List")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    //.background(.red)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    //.background(.blue)
                    .padding()
                    
                ForEach(0..<30) {index in
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 300)
                        .shadow(radius: 10)
                        .padding()
                    
                    
                    
                }
                
                
                
            }
            
            
            
            
        }
        .background(
            Color.gray
            .ignoresSafeArea()
        )
        
        
        
        
        
        
        
        
        
//        ZStack {
//
//
//            Color.gray.opacity(0.5)
//                .edgesIgnoringSafeArea(.all)
//
//
//
//            ScrollView {
//
//                LazyVStack {
//
//                    Text("All Contents")
//                        .font(.system(size: 30, weight: .semibold, design: .default))
//                        .frame(maxWidth: .infinity,alignment: .leading)
//                        .padding(.horizontal)
//
//
//                    ForEach(0..<40) { index in
//
//                        RoundedRectangle(cornerRadius: 25)
//                            .fill(.white)
//                            .frame(height: 200)
//                            .shadow(radius: 10)
//                            .padding()
//
//
//
//                    }
//
//
//
//                }
//
//
//            }
//        }
  }
}

    
    
    
struct IgnoringSafeAreaB_Previews: PreviewProvider {
    static var previews: some View {
        IgnoringSafeAreaB()
    }
}
