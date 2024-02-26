//
//  PostView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct PostView: View {
    @State var isLiked: Bool = false

        var body: some View {
            VStack {
                HStack {
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(25)
                    VStack {
                        HStack {
                            Text("Post")
                                .foregroundColor(Color.pink)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Spacer()
                        }

                        HStack {
                            Text("12 minutes ago")
                                .foregroundColor(Color(.secondaryLabel))
                            Spacer()
                        }
                    }
                    Spacer()
                }

                Spacer()

                HStack {
                    Text("Something else me")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }

                Spacer()

                HStack {
                    Button(action: {
                        isLiked.toggle()
                    }, label: {
                        Text(isLiked ? "Liked" : "Like")
                    })

                    Spacer()

                    Button(action: {

                    }, label: {
                        Text("Comment")
                    })

                    Spacer()

                    Button(action: {

                    }, label: {
                        Text("Share")
                    })
                }
                .padding()
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(7)
        }
}

#Preview {
    PostView()
}
