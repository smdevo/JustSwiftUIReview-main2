//
//  TernaryOperatorB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct TernaryOperatorB: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
       
        VStack {
            
            Button("Change: \(isStartingState.description)") {
                
                isStartingState.toggle()
                
            }
            
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 2)
                .fill(isStartingState ? .blue : .red)
            .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 150 : 50)
            
            
            Spacer()
            
        }
        
        
    }
}

struct TernaryOperatorB_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorB()
    }
}
