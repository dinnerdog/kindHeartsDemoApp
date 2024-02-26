//
//  ContactsView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct ContactsView: View {
    @State var text = ""
    
    var body: some View {
        HStack {
            Text("Contacts")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(Color.pink)

            
            Spacer()

            Image(systemName: "line.3.horizontal.decrease.circle")
                
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(Color(.secondaryLabel))
        }
        .padding()
        
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
        
    
        ZStack{
          
            Color(.secondarySystemBackground)
   
            
            List{
                Group{
                    Section (header: teacherHeader){
               
                        ForEach(0 ..< 5) { item in
                            teacherContactRow
                        }
       
                    }
             
                    Section (header: studentHeader){
                 
                        ForEach(0 ..< 12) { item in
                            studentContactRow
                        }
                    }

                    
                }
                
                
             
                
            }
     
            .listStyle(PlainListStyle())
           
        }
        .ignoresSafeArea()
       
        

    
    }
}


extension ContactsView {
    private var teacherHeader : some View {
        ZStack(alignment: .leading){
            Color(.systemBackground)
                .frame(maxWidth: .infinity)
            
            Text("Teacher")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.pink)
                .padding(EdgeInsets(top: 8, leading: 18, bottom: 8, trailing: 18))
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

        
    }
    
    private var studentHeader : some View {
        ZStack(alignment: .leading){
            Color(.systemBackground)
                .frame(maxWidth: .infinity)
            
            Text("Student")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.pink)
                .padding(EdgeInsets(top: 8, leading: 18, bottom: 8, trailing: 18))
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

        
    }
    
    private var teacherContactRow: some View{
        HStack(spacing: 12) {
                  Image(systemName: "person.circle.fill")
                      .renderingMode(.original)
                      .resizable()
                      .frame(width: 40, height: 40)
                      .cornerRadius(10)

            VStack{
                HStack{
                    Text("Andrew Brown")
                        .font(.system(size: 16))
                        .foregroundColor(.primary)
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Text("Kind Hearts Teacher")
                        .font(.system(size: 12))
                        .foregroundColor(Color(.secondaryLabel))
                }
            }
              }
             
    }
    
    private var studentContactRow: some View{
        HStack(spacing: 12) {
                  Image(systemName: "figure.child.circle.fill")
                      .renderingMode(.original)
                      .resizable()
                      .frame(width: 40, height: 40)
                      .cornerRadius(10)

            VStack{
                HStack{
                    Text("Judy")
                        .font(.system(size: 16))
                        .foregroundColor(.primary)
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Text("May the sunshine shines on every one!")
                        .font(.system(size: 12))
                        .foregroundColor(Color(.secondaryLabel))
                }
            }
              }
             
    }
}

#Preview {
   
    
        ContactsView()
    

}
