//
//  ToggleB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 10/05/24.
//

import SwiftUI

struct ToggleB: View {
    
    @State var isOnToggle: Bool = false
    
    var body: some View {
        
        
        VStack {
            
           
                Text("Status: \(isOnToggle ? "Online" : "Offline")")
                .font(.largeTitle)
           
            Toggle("Status", isOn: $isOnToggle)
            
            Spacer()
            
        }
        .padding()
    }
}

struct ToggleB_Previews: PreviewProvider {
    static var previews: some View {
        ToggleB()
    }
}
