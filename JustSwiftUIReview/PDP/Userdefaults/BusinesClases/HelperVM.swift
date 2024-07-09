//
//  HelperVM.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 06/06/24.
//

import Foundation
import Keychain


class HelperVM: ObservableObject {
    
    
    @Published var obj: UserH? {
        didSet {
            obj = getObjOfUserH(key: "obj2") ?? UserH.zeroUser
        }
    }
    
    
    init() {
        obj = getObjOfUserH(key: "obj2")
    }
  
    
    
     func storeObjOfUserH(user: UserH, key: String)  {
        
        let encoder = JSONEncoder()
        
        guard let encodedData = try? encoder.encode(user) else {return}
            
        
         UserDefaults.standard.set(encodedData, forKey: key)
            
       
    }
    
     func getObjOfUserH(key: String) -> UserH? {
        
        let decoder = JSONDecoder()
        
         guard let data = UserDefaults.standard.data(forKey: key) else { return nil}
        
        guard let objuserh = try? decoder.decode(UserH.self, from: data) else { return nil}
        
        print(objuserh)
        return objuserh
        
         
    }
    
}
