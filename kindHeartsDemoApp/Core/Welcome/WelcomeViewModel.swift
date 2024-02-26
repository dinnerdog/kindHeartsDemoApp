//
//  WelcomeViewModel.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import Foundation

class WelcomeViewModel: ObservableObject{
    func isCurrentUser() -> Bool{
        if (AuthManager.shared.checkCurrentUser() != nil) {return true
        }
        else {return false
        }
      
    }
}
