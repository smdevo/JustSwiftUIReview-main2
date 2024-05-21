//
//  PopOverB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 04/05/24.
//

import SwiftUI

struct PopOverB: View {
    
    @State var isNextViewAppear: Bool = false
    
    
    var body: some View {
        
        
     //MARK: Method Animation + (offset)
        
        
        ZStack {
            Color.purple
                .ignoresSafeArea()


            VStack {
                Button {

                    isNextViewAppear.toggle()

                } label: {
                    Text("Button")
                        .font(.largeTitle)
                        .foregroundColor(.white)
            }

                Spacer()
            }


               

                    SNextView(isNextViewAppear: $isNextViewAppear)
                        .padding(.top,100)
                        .offset(y: isNextViewAppear ? 0 : UIScreen.main.bounds.height)
                        .animation(.spring(), value: isNextViewAppear)
                






        }
        
        
        
        
        
        
        
   //MARK: Method Transition
//
//        ZStack {
//            Color.purple
//                .ignoresSafeArea()
//
//
//            VStack {
//                Button {
//
//                    isNextViewAppear.toggle()
//
//                } label: {
//                    Text("Button")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//            }
//
//                Spacer()
//            }
//
//
//                if isNextViewAppear {
//
//                    SNextView(isNextViewAppear: $isNextViewAppear)
//                        .padding(.top,100)
//                        .transition(AnyTransition.move(edge: .bottom))
//                        .animation(.spring(), value: isNextViewAppear)
//                }
//
//
//
//
//
//
//        }
//
        
        
        
        
        
        //MARK: Method Sheet
//        ZStack {
//            Color.purple
//                .ignoresSafeArea()
//
//
//            Button {
//
//                isNextViewAppear.toggle()
//
//            } label: {
//                Text("Button")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            }
//            .sheet(isPresented: $isNextViewAppear) {
//                SNextView()
//            }
//
//
//
//
//        }
    }
}

struct SNextView: View {
    
    @Environment(\.presentationMode) var pM
    @Binding var isNextViewAppear: Bool
    
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.red.ignoresSafeArea()
            
            
            Button {
                
                isNextViewAppear.toggle()
                //pM.wrappedValue.dismiss() //Method Sheet
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
            }

            
            
        }
        
    }
    
    
}



struct PopOverB_Previews: PreviewProvider {
    static var previews: some View {
        PopOverB()
    }
}
