//
//  SignUpView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

struct SignUpView: View {
  
        @StateObject var viewModel = SignUpViewModel()
        @Binding var showSignInUp: Bool
        
        var body: some View {
     
            VStack{
                TextField(text: $viewModel.displayName) {
                   Text( " name...")
                     
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(10)
                .padding()
                
                Picker("identity", selection: $viewModel.identity) {
                    Text("teacher").tag("teacher")
                    Text("student").tag("student")
                }        .pickerStyle(SegmentedPickerStyle())
                    .padding()
                
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
                        try await viewModel.SignUp()
                        showSignInUp = false 
                    }
                    
                } label: {
                    Text("Sign Up")
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                    
                }
                
         
            }
            .navigationTitle("Sign Up")
         
        }
    
}

#Preview {
    NavigationStack{
        SignUpView(showSignInUp:.constant(false))
    }
    }
