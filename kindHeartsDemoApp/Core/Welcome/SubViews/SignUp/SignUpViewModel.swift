//
//  SignUpViewModel.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

class SignUpViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var displayName = ""
    @Published var identity = ""
    
    func SignUp() async throws{
        guard !email.isEmpty, !password.isEmpty else{
            print("No email or password found.")
            return
        }
        
    let userId = try await AuthManager.shared.signUp(email: email, password: password)
     
        try await UserManager.shared.creatNewUser(user: DBUserModel(displayName: displayName,
                                             uid: userId,
                                             photoURL:"sdasd",
                                             email: email,
                                             identity: identity)
                                          )
        
    }
    
    
}

