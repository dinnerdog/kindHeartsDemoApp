//
//  KindnessWallView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 27/02/24.
//

import SwiftUI

struct KindnessWallView: View {
    private var columns = [GridItem(.fixed(20)),
                           GridItem(.fixed(20))]
    @State var text: String = ""
    
    var body: some View {
        VStack {
                  HStack {
                      Text("Kindness Wall")
                          .font(.system(size: 30, weight: .bold, design: .default))
                          .foregroundColor(Color.pink)

                      Spacer()

                      Image(systemName: "person.circle")
                          .resizable()
                          .frame(width: 45, height: 45, alignment: .center)
                          .foregroundColor(Color(.secondaryLabel))
                  }
                  .padding()

                  TextField("Search...", text: $text)
                .padding(7)
                      .background(Color(.systemGray5))
                      .cornerRadius(13)
                      .padding(.horizontal, 15)

                  ZStack {
                      Color(.secondarySystemBackground)

                      ScrollView(.vertical) {
                          VStack {
                              StoryView()

                              ForEach(0 ..< 5) { item in
                                  PostView()
                              }
                          }
                      }
                  }
                  Spacer()
              }

          }
    }


extension KindnessWallView {

}

#Preview {
    NavigationStack{
        KindnessWallView()
    }
}
