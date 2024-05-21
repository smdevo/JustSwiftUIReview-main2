//
//  SpacerB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct SpacerB: View {
    var body: some View {
        
  
        ZStack {
            
            
            
            VStack {
                Color("CustomColor")
                    .frame(height: 30)
                    
                
                Spacer()
                
                
                Color("CustomColor")
                    .frame(height: 30)
                    
            }
            .edgesIgnoringSafeArea(.all)
            
           
                
            
            
            
            
            VStack(spacing: 0) {
                    
                    HStack{
                        
                   
                        
                        Image(systemName: "menucard")
                        
                        Spacer()
                        
                        Text("Wisdom Dictionary")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        
                        
                        Spacer()
                        
                        Image(systemName: "")
                        
                        
                    }
                    .padding(.trailing,20)
                    .frame(height: 30)
                    .foregroundColor(.white)
                    .padding(20)
                    .padding(.top,40)
                    .padding(.bottom,20)
                    .background(Color("CustomColor"))
                    .cornerRadius(30)
                    
                    
                    
                    
                    
                    
                    ScrollView {
                        
                        Image("im1")
                            .padding(.top)
                        
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    //.background(.green)
                   
                    
                    
                    HStack{
                        
                        Image(systemName: "menucard")
                        
                        Spacer()
                        
                        Image(systemName: "menucard")
                        
                        Spacer()
                        
                        Image(systemName: "menucard")
                        
                        Spacer()
                        
                        Image(systemName: "menucard")
                        
                        Spacer()
                        
                        Image(systemName: "menucard")
                        
                    }
                    .frame(height: 30)
                    .foregroundColor(.white)
                    .padding(20)
                    .padding(.bottom,30)
                    .padding(.top,10)
                    .background(Color("CustomColor"))
                    .cornerRadius(30)
                }//VStack
            .edgesIgnoringSafeArea(.all)
        }
            
            

        
        
        
        
        
        
        
//        ScrollView(.vertical) {
//
//            VStack(alignment: .center, spacing: 10) {
//
//                Spacer()
//                    .frame(width: 5)
//                   // .background(.blue)
//
//                Text("Instagram")
//                    .font(.system(size: 35, weight: .bold, design: .serif))
//                    .foregroundColor(.red)
//
//                TextField("Email", text: .constant(""))
//                    .padding()
//                    .background(Color(uiColor: UIColor.systemGray6))
//                    .cornerRadius(10)
//                    .padding(.horizontal)
//
//
//
//                TextField("Password", text: .constant(""))
//                    .padding()
//                    .background(Color(uiColor: UIColor.systemGray6))
//                    .cornerRadius(10)
//                    .padding(.horizontal)
//
//
//                Button(action: {}) {
//                    Text("Sign In")
//                        .foregroundColor(.white)
//                        .padding(.vertical,10)
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                        .padding(.horizontal)
//
//
//                }
//
//                Spacer()
//                    .frame(width: 5)
//                    //.background(.blue)
//
//            }//VStack
//            .frame(maxWidth: .infinity)
//            .frame(height: UIScreen.main.bounds.height)
//           // .background(.green)
//
//        }//ScrollView
        //.background(.orange)
        
        
    }
}

struct SpacerB_Previews: PreviewProvider {
    static var previews: some View {
        SpacerB()
    }
}
