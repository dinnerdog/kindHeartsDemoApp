//
//  ChallengeGameView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct ChallengeGameView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 3) {
        
                ForEach(0 ..< 5) { item in
                    Rectangle()
                        .frame(width: 300)
                        .frame(height: 300)
                    .foregroundColor(.orange)
                    
                    .overlay{
                        VStack{
                         Spacer()
                            HStack{
                                Spacer()
                                Text("Kindness Bingo!")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .italic()
                                    .fontWeight(.bold)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                   
                }
                
            }
            .padding()
            
        }
    }
}

#Preview {
    ChallengeGameView()
}
