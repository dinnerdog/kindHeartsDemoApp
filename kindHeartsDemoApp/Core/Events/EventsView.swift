//
//  EventView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct EventsView: View {
    @State var text = ""
    @State var selectType = "Option 1"
    var body: some View {
        HStack {
            Text("Event")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(Color.pink)

            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
                .overlay{
                    HStack{
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .padding(.trailing, 20)
                    }
                }
            
            Spacer()

            Image(systemName: "line.3.horizontal.decrease.circle")
                
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(Color(.secondaryLabel))
        }
        .padding()
        

    

        ZStack{
            Color(.secondarySystemBackground)
            ScrollView{
                LazyVStack(content: {
                    ForEach(1...10, id: \.self) { count in
                        EventView()
                    }
                })
            }
        }
        
        
   
    }
}

#Preview {
        EventsView()
    
}
