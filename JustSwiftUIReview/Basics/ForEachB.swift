//
//  ForEachB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import SwiftUI

struct ForEachB: View {
    
    var users: [User] = []
    
    init() {
        users = User.users
    }
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                ForEach(users) { user in
                    
                    
                    VStack {
                        
                        HStack(alignment: .top) {
                           
                            Image(user.prImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                        
                        
                            Text(user.name)
                                .padding(.leading,20)
                                .padding(.top,10)
                                .font(.system(size: 20, weight: .semibold, design: .default))
                            
                            Spacer()
                            
                        }//Hstack
                        .padding(.horizontal,10)
                        
                        
                        Image(user.postImage)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                        
                        
                    }//VStack
                    
                    
                }//ForEach
                
            }//VStack
            
        }//ScrollView
    }//BODY
    
    
   
        
        
        
    }
    


struct ForEachB_Previews: PreviewProvider {
    static var previews: some View {
        ForEachB()
    }
}
