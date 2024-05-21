//
//  DarkModeB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 14/05/24.
//

import SwiftUI

struct DarkModeB: View {
    
    @Environment(\.colorScheme) var schemeC
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    
                    
                    Text("This text would be secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This text would be black")
                        .foregroundColor(.black)
                    
                    Text("This text would be white")
                        .foregroundColor(.white)
                    
                    Text("This text would be Red")
                        .foregroundColor(.red)
                    
                    Text("This text would be Globally Adaptive")
                        .foregroundColor(Color("CustomColor"))
                    
                    Text("This text would be Locally Adaptive")
                        .foregroundColor(schemeC == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle("DarkMode Bootcamp")
        }
    }
}

struct DarkModeB_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            DarkModeB()
                .preferredColorScheme(.light)
            
            DarkModeB()
                .preferredColorScheme(.dark)
        }
        
           
    }
}
