//
//  HomeView.swift
//  kindHeartsDemoApp
//
//  Created by 马乐 on 26/02/24.
//

import SwiftUI
import TabBar

enum Item: Int, Tabbable {
    case first = 0
    case second
    case third
    
    var icon: String {
        switch self {
            case .first:  "House"// Name of icon of first item.
            case .second: "calendar"// Name of icon of second item.
            case .third:  "gamecontroller" // Name of icon of third item.

        }
    }
    
    var title: String {
        switch self {
            case .first:  "Kindness Wall" // Title of first item.
        case .second: "Event"// Title of second item.
            case .third:  "Games"// Title of third item.
        }
    }
}

struct HomeView: View {
    @State private var selection: Item = .first
     @State private var visibility: TabBarVisibility = .visible
    
    var body: some View {
        TabBar(selection: $selection, visibility: $visibility) {
                   KindnessWallView()
                       .tabItem(for: Item.first)
                   
                   EventsView()
                       .tabItem(for: Item.second)
                   
                   GamesView()
                       .tabItem(for: Item.third)
               }
               .tabBar(style: CustomTabBarStyle())
               .tabItem(style: CustomTabItemStyle())
    }
}

