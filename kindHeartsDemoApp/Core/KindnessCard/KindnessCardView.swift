//
//  KindnessCardView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct KindnessCardView: View {
    
    var body: some View {
        HStack {
            Text("Kindness Card")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(Color.pink)

            Spacer()

            Image(systemName: "gear")
                
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(Color(.secondaryLabel))
        }
        .padding()
        
        ZStack{
            Color(.secondarySystemBackground)
            
            VStack{
                card
               
                
                Button{} label: {
                    HStack{
                        Image(systemName: "house.lodge.circle.fill")
                            .padding()
                        Text("My Space")
                        
                        Spacer()
                    }
                }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)
                .padding()
                
                Button{} label: {
                    HStack{
                        Image(systemName: "star.square")
                            .padding()
                        Text("My Collection")
                        
                        Spacer()
                    }
                }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)
                .padding()
                
                Button{} label: {
                    HStack{
                        Image(systemName: "questionmark.circle.fill")
                            .padding()
                        Text("Help")
                        
                        Spacer()
                    }
                }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)
                .padding()
                
                
                Spacer()
                
            }
          
           
        }
        .ignoresSafeArea()
        
        
         
        
    }
}

extension KindnessCardView {
    private var card :some View {
        Rectangle()
            .fill(Color.orange)
            .cornerRadius(10)
            .frame(height: 250)
            .padding()
   
            .overlay{
                ZStack(alignment:.topTrailing){
                
                        Image(systemName: "square.and.arrow.up")
                        .offset(CGSize(width: -30, height: -10))
                 
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 140,height: 140)
                            .clipShape(Circle())
                            .clipped()
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))

                        
                        VStack(alignment:.leading){
                            
                            HStack{
                                Text("Andrew Brown")
                                    .font(.title)
                                    .fontWidth(.condensed)
                                    .truncationMode(.tail)
                                    .lineLimit(1)
                                    .foregroundColor(.black)
                                 
                            }
                            
                            
                           
                            HStack{
                                Image(systemName: "phone.fill")
                                    .renderingMode(.original)
                                
                                Text("273412112")
                                    .font(.callout)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                
                                    .foregroundColor(.secondary)
                            
                            }
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                              
                            HStack{
                                Image(systemName: "heart.fill")
                                    .renderingMode(.original)
                                
                                Text("play sports")
                                    .font(.callout)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                    .foregroundColor(.secondary)
                            }
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                            
                            HStack{
                                Image(systemName: "text.word.spacing")
                                    .renderingMode(.original)
                                
                                Text("Kindness motto")
                                    .font(.callout)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                
                                    .foregroundColor(.secondary)
                            
                            }
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                              
                            
                            
                            
                            
                        }
                        Spacer()
                    }
                }
                
                
                
            }
    }
}
#Preview {
    KindnessCardView()
}
