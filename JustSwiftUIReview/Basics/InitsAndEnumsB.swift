//
//  InitsAndEnumsB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct InitsAndEnumsB: View {
    

    
    let backgroundColor: Color
    
    let count: Int
    
    let fruit: Fruit
    
    
    
    var mainView: some View {
        
        VStack {
            
            Text("\(count)")
                .font(.system(size: 50))
                .underline()
            
            
            Text(fruit.rawValue)
                .font(.system(size: 40))
            
            
        }
        .foregroundColor(.white)
        .frame(width: 200,height: 200)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(radius: 10,x: 10,y: 10)
        
    }
    
    
    
    
    
    var body: some View {
        
        mainView
        
       
    }
    
    
    enum Fruit: String {
        case apple, orange, peach, banana
    }
    
    
}





struct InitsAndEnumsB_Previews: PreviewProvider {
    
   
    
    
    static var previews: some View {
        InitsAndEnumsB(backgroundColor: .red, count: 50, fruit: .apple)
    }
}


struct InitsAndEnumsB_Previews2: PreviewProvider {
    
    
    
    
    static var previews: some View {
        SpacerB()
    }
}
