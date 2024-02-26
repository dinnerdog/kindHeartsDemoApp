//
//  UserManager.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift





final class UserManager {
    static let shared = UserManager()
    
    private let encoder: Firestore.Encoder = {
        let encoder = Firestore.Encoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }()
    
    private let userCollection = Firestore.firestore().collection("users")
    
    private func userDocument(userId: String) -> DocumentReference {
        userCollection.document(userId)
    }
    

    func creatNewUser(user: DBUserModel) async throws{
        try userDocument(userId: user.uid).setData(from: user, merge: false, encoder: encoder)
    }
    func getUser(userId: String) async throws -> DBUserModel {
        try await userDocument(userId: userId).getDocument(as: DBUserModel.self)
    }
  


}
