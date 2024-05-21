//
//  BindingB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct BindingB: View {
    
    
    @State var backgroundColor: Color = .red
    
    @State var title: String = "Still unchanged"
    
    
    
    
    var body: some View {
        
        ZStack {
            //backgroundLayer
            backgroundColor
                .ignoresSafeArea()
            
            
            //ContentLayer
            
            contentLayer
            
            
        }
        
        
        
    }//Body
    
    
    
    var contentLayer: some View {
        

        VStack {
            
            Text(title)
                .font(.largeTitle)
            
            
            
            FButtonView(backgroundColor: $backgroundColor, title: $title)
            
        }
        .foregroundColor(.white)
     
       
        
    }
    
    

}





struct FButtonView: View {

    @Binding var backgroundColor: Color
    
    @Binding var title: String
    
    
    var body: some View {

        Button(action: fButtonact) {
                Text("Press B")
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10,x: 10,y: 10)
        }
        
    }

    
    func fButtonact() {
        
        backgroundColor = .purple
        
        title = "Changed"
        
        
    }
    
    
}









struct BindingB_Previews: PreviewProvider {
    static var previews: some View {
        BindingB()
    }
}
