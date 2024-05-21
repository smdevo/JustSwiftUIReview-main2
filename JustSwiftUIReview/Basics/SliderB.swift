//
//  SliderB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 13/05/24.
//

import SwiftUI

struct SliderB: View {
    
    @State var value1: Double = 5
    
    @State var value2: Double = 55
    
    
    var body: some View {
        
        VStack {
            
            Text("Value1: \(Int(value1))")
            
            Slider(value: $value1,in: 1...10)
                .accentColor(.red)
             
            
            Text("Value2: \(String(format: "%.0f", value2))")
            
            Slider(value: $value2, in: 0...100,step: 1.0)
            
        }
        
       
    }
}

struct SliderB_Previews: PreviewProvider {
    static var previews: some View {
        SliderB()
    }
}
