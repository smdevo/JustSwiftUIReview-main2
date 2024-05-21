//
//  AnimationB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct AnimationB: View {
    
    @State var isAnimated: Bool = false
    
    
    var body: some View {
        
        
        VStack {
           
            Button("Animate: \(isAnimated.description)") {
                
                withAnimation(.default.delay(0.0)) {
                    isAnimated.toggle()
                }
               
                
                
                
            }
            
            Spacer()
            
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .blue : .green)
                .frame(width: isAnimated ? 100 : 300,height: isAnimated ? 100 : 300)
                .shadow(radius: isAnimated ? 10 : 0,x: isAnimated ? 10 : 0, y: isAnimated ? 20 : 0)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
//                .animation(
//                    Animation
//                        .default
//
//
//                    , value: isAnimated)
            
            
            Spacer()
            
            
        }
        
        
    }
}

struct AnimationB_Previews: PreviewProvider {
    static var previews: some View {
        AnimationB()
    }
}
