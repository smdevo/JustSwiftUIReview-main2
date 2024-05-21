//
//  SheetsB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 04/05/24.
//

import SwiftUI

struct SheetsB: View {
    
    @State var isNextViewOpen: Bool = false
    
    var body: some View {
        
        
        ZStack {
            
            Color.purple
                .ignoresSafeArea()
          
            
            Button {
                
                isNextViewOpen.toggle()
                
            } label: {
                Text("Button")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
//            .sheet(isPresented: $isNextViewOpen) {
//                FNextView()
//            }
            .fullScreenCover(isPresented: $isNextViewOpen) {
                FNextView()
            }
            
            
            
            
        }
    }
}

struct FNextView: View {
   
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            
            Button {
                
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
            }

            
        }
        
        
        
    }
    
    
}








struct SheetsB_Previews: PreviewProvider {
    static var previews: some View {
        SheetsB()
    }
}
