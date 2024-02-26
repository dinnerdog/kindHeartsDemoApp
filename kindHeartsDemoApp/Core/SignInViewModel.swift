//
//  SignInViewModekl.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

class SignInViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    
    
    func signIn() async throws {
        try await AuthManager.shared.signIn(email: email, password: password)
    }
}

