//
//  EventView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        VStack{
            Rectangle()
       
                .frame(height:250)
                .cornerRadius(10)
            
            HStack{
                Text(getDate())
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }
            
            
            HStack{
                Text("Kindness Party")
                    .foregroundColor(Color.black)
                    .font(.title3)
                Spacer()
            }
            
            HStack{
                Text("15 pane drive, Pinehill, Auckland, New Zealand and ")
                    .foregroundColor(Color(.secondaryLabel))
                    .foregroundColor(Color.secondary)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Spacer()
            }
            
            HStack{
                Button{} label: {
                    Text("Join Now")
                }
                .frame(width: 180)
                .frame(height:50)
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)

                
                Spacer()
                
                Button{} label: {
                    Image(systemName: "calendar")
                    Text("Add in Calender")
              
                }
                .frame(width: 180)
                .frame(height:50)
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)

            }
        }
        
        .frame(maxWidth: .infinity)
        
        .padding()
        .border(Color.gray, width: 1)
        .background(Color.white)
        .cornerRadius(10)
        
    }
}

extension EventView {
    func getDate() -> String{
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let formattedDate = formatter.string(from: now)
        return formattedDate
    }

}
#Preview {
    EventView()

}
