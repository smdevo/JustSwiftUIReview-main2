//
//  ExtractingB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct ExtractingB: View {
    
    //MARK: State Variables
    
    @State var backgroundColor: Color = Color.blue
    
    @State var title: String = "Same"
    
    
    
    //MARK: Body
    var body: some View {
       
        
        ZStack {
            
            //backgroundLayer
            backgroundLayer
            
            
            
            //ContentLayer
            contentLayer
            

        }
        
        
        
    } // body
    
    
    
    
   //MARK: Views
    
    
    var backgroundLayer: some View {
        
        backgroundColor
            .ignoresSafeArea()
        
        
    }//BackgroundLayer
    
    
    
    var contentLayer: some View {
        
        VStack {
            
          Text(title)
            
        
          Button(action: changeInformation, label: {
              
              buttonView
              
          })
            
            
            
           
            
            
        }
        
        
    }//ContentLayer
    
    
    var buttonView: some View {
        
        Text("Change")
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.purple)
            .cornerRadius(10)
        
    }
    
    
    
    
    
    //MARK: Functions
    
    
    func changeInformation() {
        
        backgroundColor = .green
        title = "CHANGED"
        
    }
    
    
    
    
}





struct ExtractingB_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingB()
    }
}
