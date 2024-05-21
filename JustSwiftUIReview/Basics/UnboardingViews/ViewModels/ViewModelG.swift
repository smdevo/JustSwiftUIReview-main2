//
//  ViewModelG.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 21/05/24.
//

import Foundation

class ViewModelG: ObservableObject {
    
    @Published var users: [UserG] = []
    
    init(){
        getdate()
    }
    
    
    func checkkingexistUser(username: String) -> Bool {
        for user in users {
            if user.userName == username {
                return true
            }
        }
        return false
    }
    
    func addUser(name: String, age: Int, gender: Gender, password: String, userName: String){
        let newuser = UserG(name: name, age: age, gender: gender, password: password, userName: userName)
        
        users.append(newuser)
    }
    
    func findingUser(username: String,password: String) -> Bool{
        
        for us in users {
            if us.userName == username && us.password == password {
                return true
            }
                
        }
        return false
    }
    
    
    
    func getdate() {
        
        users = UserG.zeroUsers
        
    }
    
    
}
