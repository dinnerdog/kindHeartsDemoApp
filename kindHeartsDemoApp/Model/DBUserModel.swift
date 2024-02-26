//
//  DBUserModel.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import Foundation



struct DBUserModel: Codable{
    let displayName: String?
    let uid: String
    let photoURL: String?
    let email: String?
    let identity: String
}
