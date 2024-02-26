//
//  StoryView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct StoryView: View {
    let stories = ["story1", "story2", "story3","story1", "story2", "story3"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                  HStack(spacing: 3) {
                      ForEach(stories, id: \.self) { name in
                          Image(name)
                              .resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 140, height: 200, alignment: .center)
                              .background(Color.black)
                              .clipped()
                              .overlay{
                                  Image(systemName: "book.fill")
                                      .foregroundColor(.pink)
                              }
                      }
                  }
                  .padding()
              }
    }
}

#Preview {
    StoryView()
}
