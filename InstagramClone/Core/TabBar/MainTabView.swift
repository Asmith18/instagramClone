//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/21/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("reels")
                .tabItem {
                    Image(systemName: "play.tv")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
