//
//  ButtonB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct ButtonB: View {
    
    @State var title = "This is my title"
    
    
    var body: some View {
      
        
        VStack {
            Text(title)
            
            
            
            Button {
                title = "Button 1 Pressed"
            } label: {
                
                
                Text("Button1")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10,x: 10,y: 10)
                    )
                
                
            }
            
            
            Button("Press Me") {
                title = "Button 2 Pressed"
            }
            

        }
        
        
    }
}

struct ButtonB_Previews: PreviewProvider {
    static var previews: some View {
        ButtonB()
    }
}
