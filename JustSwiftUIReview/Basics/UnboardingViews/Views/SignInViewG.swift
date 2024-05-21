//
//  SignInViewG.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct SignInViewG: View {
    
    @AppStorage("signed") var isSigned: Bool?
    
    @State var username: String = ""
    
    @State var password: String = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Spacer()
            
            VStack(spacing: 20) {
                
                logoImage
                
                nameAppLabel
                
                namefullAppLabel
                
                userNameTextField
                
                passwordTextField
                
                buttonView
            }
            
            Spacer()
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.white)
                .frame(height: 1)
            
            
            HStack {
                
               Text("Haven't yet account?")
                    .foregroundColor(.white)
                
                signUpButton

            }
            
        }
        .padding()
    }
    
    
}


struct SignInViewG_Previews: PreviewProvider {
    static var previews: some View {
        SignInViewG()
            .background(Color("CustomColor").ignoresSafeArea())
    }
}




//MARK: View Components

extension SignInViewG {
    
   private var logoImage: some View {
        
        Image(systemName: "globe.central.south.asia.fill")
           .resizable()
           .scaledToFit()
           .font(.largeTitle)
           .frame(width: 200, height: 100)
           .foregroundColor(.white)
        
    }
    
    private var nameAppLabel: some View {
        Text("TTU")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var namefullAppLabel: some View {
        Text("Travel Through UZbekistan")
            //.font(.largeTitle)
            .foregroundColor(.white)
    }
    
    private var userNameTextField: some View {
        TextField("username", text: $username)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
    
    private var passwordTextField: some View {
        
        TextField("password", text: $password)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
    
    private var buttonView: some View {
        
        Button {
            
            isSigned = true
            
        } label: {
            Text("Sign In")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                
        }
        
    }
    
    
    private var signUpButton: some View {
        
        Button {
            
        } label: {
            Text("Sign Up")
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        
    }
    
}
