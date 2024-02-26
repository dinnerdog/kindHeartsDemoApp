//
//  GameView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        Rectangle()
            .fill(Color.pink)
            .frame(maxWidth: .infinity)
            .frame(height: 200)

            .overlay{
                VStack{
                 Spacer()
                    HStack{
                        Spacer()
                        Text("Where is Kindness?")
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

#Preview {
    GameView()
}
