//
//  ProfileViewModel.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import Foundation


@MainActor // 确保更新UI时在主线程
class ProfileViewModel: ObservableObject {
    @Published var displayName: String = ""
    @Published var email: String = ""
    @Published var identity: String = ""
    
    init() {
        loadUserProfile()
    }

    func loadUserProfile() {
        guard let userId = AuthManager.shared.checkCurrentUser()?.uid  else {
            self.displayName = "User Unknown"
            self.email = "Unknown Email"
            self.identity = "UnKnown Identity"
            return
        }

        Task {
            do {
                let user = try await UserManager.shared.getUser(userId: userId)
                self.displayName = user.displayName ?? "User Unknown"
                self.email = user.email ?? "Unknown Email"
                self.identity = user.identity
            } catch {
                print("Error fetching user: \(error)")
                self.displayName = "Error Loading User"
                self.identity = ""
                self.email = ""
            }
        }
    }
}
