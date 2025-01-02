//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/2/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var user: User
    
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
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // actiion button
            
            Button() {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
