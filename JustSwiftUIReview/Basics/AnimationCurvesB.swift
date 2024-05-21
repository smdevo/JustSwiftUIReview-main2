//
//  AnimationCurvesB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct AnimationCurvesB: View {
    
    @State var isAnimating: Bool = false
    
    
    
    
    var body: some View {
        
        
        VStack {
            
            Button("Use Animation") {
                
                isAnimating.toggle()
                
            }
            Spacer()
            
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 60)
                .padding(.top,150)
                .animation(.default,value: isAnimating)
            
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 60)
                .animation(Animation.easeIn,value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 60)
                .animation(.easeInOut,value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 60)
                .animation(.easeOut,value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 60)
                .animation(.spring(),value: isAnimating)
            
            
            Spacer()
        }
        .padding(.bottom,200)
        
    }
}

struct AnimationCurvesB_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesB()
    }
}
