//
//  TransitionB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct TransitionB: View {
    
    @State var backgroundColor: Color = .green
    
    @State var isCalledSV: Bool = false
    
    
    var body: some View {
        
        
        
        ZStack(alignment: .leading) {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    
                    Button {
                       // withAnimation(Animation.default.delay(3.0)) {
                            
                            isCalledSV.toggle()
                       // }
                    
                       
                        
                    } label: {
                        Image(systemName: "book")
                    }

                    
                    Spacer()
                    
                    Text("Main View")
                    
                    Spacer()
                        
                    Button {
                       
                        backgroundColor = .purple
                        
                    } label: {
                        Image(systemName: "book")
                    }
                    
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
                
                
                
                Spacer()
                
            }
            
            
          
            
            
            if isCalledSV {
                
                    SettingV(isCalledSV: $isCalledSV, backgroundColor: $backgroundColor)
                        .frame(width: UIScreen.main.bounds.width / 2)
                        .background(Color(uiColor: UIColor.systemGray3))
                        .transition(AnyTransition.scale.animation(.spring()))
                        
                   
                }
              
        }
       
    }
    
    
    
    
    
}

struct SettingV: View {
    
    
    @Binding var isCalledSV: Bool
    
    @Binding var backgroundColor: Color
    
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            
            Button {
                withAnimation {
                    isCalledSV.toggle()

                }
                
            } label: {
                Image(systemName: "xmark")
            }
            
            
            Button {
               
                backgroundColor = .green
                
            } label: {
                Image(systemName: "xmark")
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .font(.largeTitle)
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
        .padding()
        
        
        
        
    }
}




struct TransitionB_Previews: PreviewProvider {
    static var previews: some View {
        TransitionB()
    }
}
