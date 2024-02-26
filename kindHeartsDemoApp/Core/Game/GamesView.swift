//
//  GameView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct GamesView: View {
    
 
 

    var body: some View {
        HStack {
            Text("Games")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(Color.pink)

            
            Spacer()
            

            HStack{
                Text("mana🔮:")
                    .foregroundColor(.secondary)
                Text("30")
                    .foregroundColor(.pink)
                
                Image(systemName: "plus.circle.fill")
                    
                
            }
            .padding()
            .font(.caption)
            .frame(height: 30)
            .bold()
            .background((Color.gray.opacity(0.2)))
            .cornerRadius(10)
            
            
            Image(systemName: "trophy")
                
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(Color(.secondaryLabel))
        }
        .padding()

        
        ZStack{
      
            Color(.secondarySystemBackground)
  
            ScrollView  {
                
                ChallengeGameView()
                
                ForEach(0 ..< 5) { item in
                    GameView()
                }
            }
            
        }
       
        
        }
        
    }
    

    
#Preview {
    GamesView()
}
