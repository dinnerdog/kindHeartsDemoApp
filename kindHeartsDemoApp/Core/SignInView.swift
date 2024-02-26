//
//  SignInView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

struct SignInView: View {
    @StateObject var viewModel = SignInViewModel()
    @Binding var showSignInUp : Bool
    
    var body: some View {
 
        VStack{
            TextField(text: $viewModel.email) {
               Text( " email...")
                 
            }
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.secondary.opacity(0.2))
            .cornerRadius(10)
            .padding()
            
            SecureField(text: $viewModel.password) {
                
                Text(" password...")
                   
      
            }
       
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.secondary.opacity(0.2))
            .cornerRadius(10)
            .padding()
            
            Button {
           
                Task{
                    try await viewModel.signIn()
                    showSignInUp = false
                }
                
            } label: {
                Text("Sign In")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                
            }
     
        }
        .navigationTitle("Sign In")
     
    }
}

#Preview {
    NavigationStack{
        SignInView(showSignInUp: .constant(true))
    }
}
