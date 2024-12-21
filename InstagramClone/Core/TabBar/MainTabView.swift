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
            Text("Home")
                .tabItem {
                    Image("home")
                }
            
            Text("Search")
                .tabItem {
                    Image("search")
                }
            
            Text("Upload")
                .tabItem {
                    Image("upload")
                }
            
            Text("reels")
                .tabItem {
                    Image("reels")
                }
            
            Text("account")
                .tabItem {
                    Image("ruffles")
                        .resizable()
                        .frame(width: 21, height: 21)
                        .cornerRadius(50)
                }
        }
    }
}

#Preview {
    MainTabView()
}
