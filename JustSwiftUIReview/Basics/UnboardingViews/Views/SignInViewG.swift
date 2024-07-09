//
//  SignInViewG.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct SignInViewG: View {
    
    @EnvironmentObject var vm: ViewModelG
    
    
    @AppStorage("signed") var isSigned: Bool = false
    @AppStorage("username") var usernameOfM: String?
    @AppStorage("password") var passwordOfM: String?
    
    
    
    @State var username: String = ""
    
    @State var password: String = ""
    
    @State var signUptoggle: Bool = false
    
    @State var alerttitle: String = ""
    @State var alerttoggle: Bool = false
    
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
        .alert(isPresented: $alerttoggle) {
            Alert(title: Text(alerttitle))
        }
    }
    
    
}


struct SignInViewG_Previews: PreviewProvider {
    static var previews: some View {
        SignInViewG()
            .background(Color("CustomColor").ignoresSafeArea())
    }
}




//MARK: View extention

extension SignInViewG {
    
   private var logoImage: some View {
        
       //Image(systemName: "globe.central.south.asia.fill")
       Image("icUzb1")
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
            
            pressSignIn()
            
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
            signUptoggle.toggle()
        } label: {
            Text("Sign Up")
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .sheet(isPresented: $signUptoggle, onDismiss: {
            username = usernameOfM ?? ""
            password = passwordOfM ?? ""
            print("Ondismiss")
            
        }, content: {
            
              OnBoardingViewG()
            
        })
        
    }
    
}


//MARK: Function extention

extension SignInViewG {
    
    func pressSignIn() {
        
        guard checkingFull() else {
            alerttitle = "Username and password should contain more than two character"
            alerttoggle.toggle()
            return
        }
        
        guard vm.findingUser(username: username, password: password) else {
            alerttitle = "There is no user that have like username or password or You are writing username or password wrong. Please check and try again"
            alerttoggle.toggle()
            return
        }
        usernameOfM = username
        passwordOfM = password
        
        isSigned = true
    }
    
    func checkingFull() -> Bool {
        
        return username.count > 2 && password.count > 2 ? true : false
        
    }
    
    
    
    
}
