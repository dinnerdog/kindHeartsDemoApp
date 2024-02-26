//
//  File.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import Foundation
import Firebase
import FirebaseAuth

struct UserModel{
    let displayName: String?
    let uid: String
    let photoURL: String?
    let email: String?
 
    
    init(user: User) {
        self.displayName = user.displayName
        self.uid = user.uid
        self.photoURL = user.photoURL?.absoluteString
        self.email = user.email

    }
    
}
