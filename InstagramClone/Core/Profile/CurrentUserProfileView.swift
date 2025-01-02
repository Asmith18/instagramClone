//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/30/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    var user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: posts)
            }
            .navigationTitle(user.username)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
