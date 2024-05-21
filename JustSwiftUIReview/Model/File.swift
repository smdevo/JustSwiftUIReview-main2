//
//  File.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/05/24.
//

import Foundation

class User: Identifiable {
    var name: String
    var prImage: String
    var postImage: String
    
    
    init(name: String, prImage: String, postImage: String) {
        self.name = name
        self.prImage = prImage
        self.postImage = postImage
    }
    
    
    static var users: [User] =
    [
        User(name: "Samandar", prImage: "im1", postImage: "post1"),
        User(name: "Humoyun", prImage: "im2", postImage: "post2"),
        User(name: "Akbarjon", prImage: "im3", postImage: "post3"),
        User(name: "Sardorbek", prImage: "im4", postImage: "post4"),
        User(name: "Rustambek", prImage: "im5", postImage: "post5"),
        User(name: "Amirqul", prImage: "im6", postImage: "post6")
    ]
    
    
    
}





