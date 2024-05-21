//
//  IfGuardB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 15/05/24.
//

import SwiftUI

struct IfGuardB: View {
    
    @State var currentUserId: String? = "TesterId12"
    
    @State var displayText: String?
    
    @State var isLoading: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack  {
                
                Text("Here we are going to practise safe coding")
                if let displayText {
                    Text(displayText)
                        .font(.largeTitle)
                }
                if isLoading {
                    ProgressView()
                }
                
                
                //Do not force unrap walue, it would lead to crash, do not use ! ever
                //Text(displayText!) //This line causes crash
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                
                loadData2()
            }//onAppear
        }//nav
    }//body
    
    
    
    func loadData() {
        
        
        if let currentUserId {
            
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
               
                displayText = "This is new data and User id is: \(currentUserId)"
                
                isLoading = false
            })
            
        } else {
            
            displayText = "1:Error there is no UserId"
            
        }
  
        
        
    }
    
    func loadData2() {
        
        guard let currentUserId else {
            displayText = "2:Error there is no UserId"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: {
            
            displayText = "2:This is new data and User id is: \(currentUserId)"
            
            isLoading = false
        })
    }
    
    
    
}

struct IfGuardB_Previews: PreviewProvider {
    static var previews: some View {
        IfGuardB()
    }
}
