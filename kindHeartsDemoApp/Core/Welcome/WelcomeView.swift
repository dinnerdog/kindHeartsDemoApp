//
//  WelcomeView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI

struct WelcomeView: View {
    
    @StateObject var viewModel = WelcomeViewModel()
    @State var showSignInUp = false
    
    var body: some View {
        
        
        VStack{
            
         
            
            ProfileView(showSignInUp: $showSignInUp)
            
            
          
            
            
        }
        .onAppear{
            if viewModel.isCurrentUser() == true {
                showSignInUp = false
            } else {
                showSignInUp = true
            }
        }
        .navigationTitle("Welcome")
        .fullScreenCover(isPresented: $showSignInUp){
            VStack{

                
                NavigationStack{
                    
                    
                    HStack{
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(.red)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                            .overlay{
                                VStack{
                                    Text("Kind Hearts")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                    Text(" School")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                }
                            }
                        
                    }
                    
                    NavigationLink{
                        SignInView(showSignInUp: $showSignInUp)
                    } label: {
                        Text("Sign In")
                    }
                    
                    
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                    
                    NavigationLink{
                        SignUpView(showSignInUp: $showSignInUp)
                    } label: {
                        Text("Sign Up")
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding()
                    }

                    
                    
                }

            }
        }
    }
}

#Preview {
    NavigationStack{
        WelcomeView()
    }
}
