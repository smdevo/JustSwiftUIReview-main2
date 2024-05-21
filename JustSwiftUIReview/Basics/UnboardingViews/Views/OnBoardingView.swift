//
//  OnBoardingView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct OnBoardingViewG: View {
    
    //Welcomne page
    //Create name
    //create username
    //create password
    //choose age
    //Choose gender
    
    @State var nameofUser: String = ""
    @State var ageOfUser: Double = 20
    @State var genderOfUser: String = Gender.male.rawValue
    @State var userNameOfUser: String = ""
    @State var passwordOfUser: String = ""
    
    
    @State var currentState: Int = 0
    
    
    
    //MARK: body
    var body: some View {
        
        
        ZStack {
            
            
            VStack(spacing:20) {
                Spacer()
                
               
                    imageofWelcome
                    
              
                
                
                switch currentState {
                case 0:
                    welcomePage
                case 1:
                    namePage
                case 2:
                    agePage
                case 3:
                    genderPage
                case 4:
                    usernamePage
                case 5:
                    passwordPage
                    
                default:
                    RoundedRectangle(cornerRadius: 25)
                }
                
                
                
                
                Spacer()
                
                Spacer()
                nextbuttonView
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .frame(height: 1)
                
                
                HStack {
                    
                   Text("Haven't yet account?")
                        .foregroundColor(.white)
                    
                    signInButton

                }
                
            }//Vstack
            .shadow(radius: 10, x: 10, y: 10)
            .padding()
            
        }//zStack
    }//body
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingViewG()
            .background(Color("CustomColor"))
           // .background(Color.purple)
//            .background(Image("im5")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//            )
            
    }
}


extension OnBoardingViewG {
    
    
    //MAin Image
    private var imageofWelcome: some View {
           // Image(systemName: "globe.central.south.asia.fill")
        Image("icUzb1")
               .resizable()
               .frame(width: 100, height: 100)
               .padding()
               .background()
               .cornerRadius(10)
               
               .font(.largeTitle)
               
               

    }
    
    //Main Next Button
    private var nextbuttonView: some View {
        
        Button {
            
        } label: {
            Text("Next")
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color("CustomColor"))
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.bottom)
                .shadow(radius: 10, x: 20, y: 20)
                
        }
        
    }
    
    //Main Sign in Button
    private var signInButton: some View {
        
        Button {
            
        } label: {
            Text("Sign In")
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        
    }
    
    
    
    //MARK: Welcome Page
    private var welcomePage: some View {
        
        VStack {
           textofwelcome
            
           textfullWelcome
        }
        
    }
    
   
    
    private var textofwelcome: some View {
        Text("TTU")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var textfullWelcome: some View {
        Text("This app is produced by developer in order to explain, travel and journey to Uzbekistan's magestic and hictoric palaces. By signning Up it you can have unrepeateble impressions. Enjoy your trip🇺🇿🥳")
            .font(.headline)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            
        
    }
    
    //MARK: Name Page
    private var namePage: some View {
        VStack {
            namelabel
            
            nameTextField
        }
    }
    
    
    
    private var namelabel: some View {
        Text("Please, Enter your name")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var nameTextField: some View {
        TextField("name", text: $nameofUser)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
    
    //MARK: Age Page
    
    private var agePage: some View {
        VStack(spacing: 20){
            ageChooselabel
            
            agelabel
            
            sliderAge
        }
        
    }
   
    private var ageChooselabel: some View {
        Text("Please, choose your age:")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var agelabel: some View {
        Text(String(format: "%.0f", ageOfUser))
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var sliderAge: some View {
        
        Slider(value: $ageOfUser,
               in: 10...100, step: 1.0,
               label: {Text("Slider")},
               minimumValueLabel:
                {Text("18")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)},
               maximumValueLabel:
                {Text("100")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
        })
        .accentColor(.white)
        
    }
    
    //MARK: GenderPage
    private var genderPage: some View {
        
        VStack(spacing: 20) {
            
            genderChooselabel
            
            genderPicker
        }
        
    }
    
    private var genderChooselabel: some View {
       
          
            Text("Your Gender: \(genderOfUser.capitalized)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        
    }
    
    private var genderPicker: some View {
        
        Picker(selection: $genderOfUser,
               content: {
                    Text("Male")
                .foregroundColor(Color("CustomColor"))
                .fontWeight(.bold)
                .tag("male")
            
                    Text("Female")
                .foregroundColor(Color("CustomColor"))
                .fontWeight(.bold)
                .tag("female")
                        },
               label: {Text("Select Gender")}
        )
        .pickerStyle(WheelPickerStyle())
        .background(
            Color.white
                .cornerRadius(20)
        )
        
        
    }
    
    //MARK: UserName Page
    private var usernamePage: some View {
        VStack {
            usernamelabel
            
            userNameTextField
        }
    }
    
    
    
    private var usernamelabel: some View {
        Text("Please, Enter your username")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var userNameTextField: some View {
        TextField("@username", text: $userNameOfUser)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
    
    //MARK: PasswordPage
    
    private var passwordPage: some View {
        VStack {
            passwordlabel
            
            passwordTextField
        }
        
    }
    
    private var passwordlabel: some View {
        Text("Please, create your password")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var passwordTextField: some View {
        SecureField("password", text: $passwordOfUser)
            .keyboardType(.default)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
    
    
}


