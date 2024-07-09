//
//  HelperToStore.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 06/06/24.
//

import Foundation


class HelperDefaults {
    
    static var defaults = UserDefaults.standard
    
    
    static func storeObjOfUserH(user: UserH, key: String)  {
        
        let encoder = JSONEncoder()
        
        guard let encodedData = try? encoder.encode(user) else {return}
            
        
        defaults.set(encodedData, forKey: key)
            
       
    }
    
    static func getObjOfUserH(key: String) -> UserH? {
        
        let decoder = JSONDecoder()
        
        guard let data = defaults.data(forKey: key) else { return nil}
        
        guard let objuserh = try? decoder.decode(UserH.self, from: data) else { return nil}
        
        print(objuserh)
        return objuserh
        
    }
    
}
