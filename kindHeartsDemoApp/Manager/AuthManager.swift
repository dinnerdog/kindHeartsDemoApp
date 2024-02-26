//
//  AuthManager.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//
import Foundation
import FirebaseAuth

final class AuthManager {
    static let shared = AuthManager()
    @Published var currentUser: UserModel? // 当前用户
    
    func checkCurrentUser() -> User? {
        if let user = Auth.auth().currentUser{
            return user
        } else {
            return nil
        }
    }
    
    func signUp(email: String, password: String) async throws -> String {
        let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
        let user = authResult.user // 假设`user`是非可选的
        self.currentUser = UserModel(user: user)
        return user.uid
    }
    
    func signIn(email: String, password: String) async throws -> Bool {
        let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
        let user = authResult.user // 假设`user`是非可选的
        self.currentUser = UserModel(user: user)
        return true
    }	
    
    func signOut() throws {
        try Auth.auth().signOut()
        self.currentUser = nil
    }
}
