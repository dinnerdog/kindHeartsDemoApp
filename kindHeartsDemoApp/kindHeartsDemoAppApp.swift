//
//  kindHeartsDemoAppApp.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI
import Firebase

@main
struct kindHeartsDemoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
  
        }
    }
}
