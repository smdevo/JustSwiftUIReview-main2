//
//  File.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 06/06/24.
//

import Foundation


class UserH: Codable {
    var firstname: String
    var lastname: String
    var email: String
    var phone: String
    var adress: String
    
    init(firstname: String, lastname: String, email: String, phone: String, adress: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.phone = phone
        self.adress = adress
    }
    
    static var zeroUser: UserH = .init(firstname: "John", lastname: "Johnson", email: "john@gmail.com", phone: "932487", adress: "Florida 12")
    
    
}
