//
//  AppStorageB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct AppStorageB: View {
    
   // @State var currentUserName: String?
    
    @AppStorage("name1") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            
            if let currentUserName {
                Text(currentUserName)
            }
            
            
            Button("Save".uppercased()) {
                
                let name = "Samandar"
                
                currentUserName = name
                
               // UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}


//MARK: Model

struct UserUD {
    var name: String
    var username: String
    var password: String
    
    
    
    static var zeroDataUsers: [UserUD] =
    [
    UserUD(name: "Samandar", username: "smanadar", password: "tester1"),
    UserUD(name: "Humoyun", username: "humoyun", password: "tester2"),
    UserUD(name: "Sardorbek", username: "sardorbek", password: "tester3")
    ]
    
    static var zeroUser: UserUD {
        return UserUD(name: "", username: "", password: "")
    }
}





class ViewModelUD: ObservableObject {
    
    @Published var usersData: [UserUD] = []
    
    @Published var user: UserUD = UserUD.zeroUser
    
    
    init() {
       getData()
    }
    
    
    
    func getData() {
        
        usersData = UserUD.zeroDataUsers
        
    }
    
    
    
    func checkSignIn(username: String, password: String) -> Bool {
        
        for user in usersData {
           
            if user.password == password && user.username == username {
                self.user = user
                return true
            }
            
        }
        return false
    }
    
    func isFullFunc(username: String, password: String) -> Bool {
        
        return !username.isEmpty && !password.isEmpty
        
    }
    
    
}







struct SignInUD: View {
    
    
    @StateObject var vmUD: ViewModelUD = ViewModelUD()
    
    @State var userName: String = ""
    @State var password: String = ""
    
    @State var isFull: Bool = false
    
    
    var body: some View {
        
        ZStack {
           // Color.gray.ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Text("Instagram")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                
                
                TextField("UserName", text: $userName)
                    .padding()
                    .background(
                        Color.gray
                            .opacity(0.4)
                            .cornerRadius(10)
                    )
                
                
                
                TextField("Password", text: $password)
                    .padding()
                    .background(
                        Color.gray
                            .opacity(0.4)
                            .cornerRadius(10)
                    )
                
                Button {
                    
                    if vmUD.checkSignIn(username: userName, password: password) {
                        UserDefaults.standard.set(vmUD, forKey: "vmUD")
                        UserDefaults.standard.set(true, forKey: "verified")
                    }
                    
                } label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            vmUD.isFullFunc(username: userName, password: password) ? .blue : .blue.opacity(0.5)
                            )
                        .cornerRadius(10)
                }
                .disabled(!vmUD.isFullFunc(username: userName, password: password))

                
            }
            .padding()
            
            
        }//Zstack
        
        
    }
    
    
    
    
    
}



struct HomeViewUD: View {
    
    @StateObject var vm: ViewModelUD = UserDefaults.standard.object(forKey: "vmUD") as! ViewModelUD
    
    

        
    
    var body: some View {
        NavigationView {
            
            Text("HomeView")
                .font(.largeTitle)
            
        }
        .navigationTitle("Hello \(vm.user.name.uppercased())")
        
        
    }
}








struct AppStorageB_Previews: PreviewProvider {
    static var previews: some View {
        SignInUD()
    }
}
