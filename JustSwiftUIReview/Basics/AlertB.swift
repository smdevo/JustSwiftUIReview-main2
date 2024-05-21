//
//  AlertB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/05/24.
//

import SwiftUI

struct AlertB: View {
    
    @State var backgrounColor: Color = .green
    @State var isPresentedAlert: Bool = false
    
    
    var body: some View {
        
        ZStack {
            backgrounColor
                .ignoresSafeArea()
            
            
            Button {
                
                isPresentedAlert.toggle()
                
                
            } label: {
                Text("Change")
            }
            .alert(isPresented: $isPresentedAlert) {
                Alert(title: Text("Change background into red"),
                      message: Text("Do you want to really change the backgroundcolor into red?"),
                      primaryButton: .destructive(Text("Yes"), action: {backgrounColor = .red}),
                      secondaryButton: .cancel())
            }
            
        }
        
       

    }
}

struct AlertB_Previews: PreviewProvider {
    static var previews: some View {
        AlertB()
    }
}
