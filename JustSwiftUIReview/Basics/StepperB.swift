//
//  Stepper.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 13/05/24.
//

import SwiftUI

struct StepperB: View {
    
    @State var value: Int = 0
    @State var textSize: CGFloat = 20
    
    var body: some View {
        
        VStack {
            Stepper("Stepper \(value)", value: $value)
            
            Spacer()
            
            Text("Hello Everybody")
                .font(.system(size: textSize))
            
            Spacer()
             
            Stepper("Changing Size", onIncrement: {
                textSize += 10
            }, onDecrement: {
                textSize -= 10
            })
            
        }
        .padding()
        
       
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        StepperB()
    }
}
