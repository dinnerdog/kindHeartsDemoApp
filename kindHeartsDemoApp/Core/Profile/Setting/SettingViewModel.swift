//
//  SettingViewModel.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import Foundation

class SettingViewModel: ObservableObject{
    func signOut() throws {
        try AuthManager.shared.signOut()
    }
}
