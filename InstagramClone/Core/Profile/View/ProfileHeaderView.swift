//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/2/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var user: User
    @State private var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                Image(user.profileImageName ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8.0) {
                    
                    StatView(value: 3, title: "Posts")
                    
                    StatView(value: 12, title: "Followers")
                    
                    StatView(value: 24, title: "Following")
                    
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 4)
            
            
            // name and bio
            VStack(alignment: .leading) {
                if let fullName = user.fullName {
                    Text(fullName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text(user.username)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // actiion button
            
            Button() {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("Follow User...")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(6)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1))
            }
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
