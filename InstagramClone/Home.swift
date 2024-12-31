//
//  ContentView.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/21/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                Stories()
                
                Divider()
                
                OldPost()
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
                
                OldPost(image: "ruffles", description: "Meet mr. ruffles")
            }
            
            TabBar()
        }
    }
}

#Preview {
    Home()
}

struct Header: View {
    var body: some View {
        HStack {
            Image("IG logo")
            
            Spacer()
            HStack(spacing: 20.0) {
                Image("Icons")
                Image("messages")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    
    var image: String = "ruffles"
    var name: String = "Will Yam"
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }.overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                Story()
                Story()
                Story()
                Story()
                Story()
                Story()
                Story()
                Story()
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("ruffles")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Willie Yan")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    
    var image: String = "ruffles"
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10.0) {
                    Image("Icons")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct OldPost: View {
    
    var image: String = "ruffles"
    var description: String = "I miss my puppers"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            
            PostHeader()
            
            PostContent(image: image)
            
            Text("Liked by Meng To and others")
                .font(.caption)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
                .fontWeight(.bold)
            
            Text(description)
                .font(.caption)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7.0) {
                    Image("ruffles")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add Comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            
            HStack {
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("upload")
                Spacer()
                Image("reels")
                Spacer()
                Image("ruffles")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
        }
    }
}
