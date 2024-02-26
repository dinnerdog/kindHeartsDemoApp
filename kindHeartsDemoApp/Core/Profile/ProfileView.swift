//
//  ProfileView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    @Binding var showSignInUp: Bool
    var body: some View {
        VStack(alignment: .leading){
            Text("User Name: \(viewModel.displayName)")
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(10)
                .padding()
               
            Text("email: \(viewModel.email)")
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(10)
                .padding()
            
            Text("Identity: \(viewModel.identity)")
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(10)
                .padding()
       
    
        }
        .toolbar{
            ToolbarItem {
                NavigationLink{
                    SettingView(showSignInUp: $showSignInUp)
                } label: {
                    Image(systemName: "gear")
                        .font(.headline)
                }
            }
        }
        .navigationTitle("Profile")
        
       
    }
    
    
}

#Preview {
    NavigationStack{
        ProfileView(showSignInUp: .constant(false))
    }
}
