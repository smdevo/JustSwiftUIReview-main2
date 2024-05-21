//
//  ColorPickerB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 13/05/24.
//

import SwiftUI

struct ColorPickerB: View {
    
    @State var backC = Color.green
    
    var body: some View {
        
        ZStack {
            backC.ignoresSafeArea()
            
           ColorPicker(selection: $backC, supportsOpacity: true, label: {
               
               Label {
                   Text("Colors")
               } icon: {
                   Image(systemName: "flame.circle.fill")
               }
               .font(.largeTitle)
               
           })
           .padding()
           .background(Color.red)
           .cornerRadius(10)
           .shadow(radius: 10)
           .padding()
            
            
            
        }
    }
}

struct ColorPickerB_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerB()
    }
}
