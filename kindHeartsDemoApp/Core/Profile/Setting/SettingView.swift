//
//  SettingView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel = SettingViewModel()
    @Binding var showSignInUp: Bool
    
    var body: some View {
        List{
            Button{
                Task{
                    do{
                        try viewModel.signOut()
                        showSignInUp = true
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Sign Out")
            }
        }
        .navigationTitle("Setting")
    }
}

#Preview {
    NavigationView{
        SettingView(showSignInUp: .constant(false))
    }
}
