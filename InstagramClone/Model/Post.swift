//
//  Post.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/30/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "I love Ruffles!",
            likes: 100,
            imageUrl: "ruffles",
            timestamp: Date(),
            user: User.MOCK_USERS[0]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Just bought the worst revulto lamborghini produced...",
            likes: 200, imageUrl: "revulto",
            timestamp: Date(),
            user: User.MOCK_USERS[1]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "I love my new f-40!",
            likes: 300,
            imageUrl: "ron",
            timestamp: Date(),
            user: User.MOCK_USERS[2]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Cant wait to get back on the track!",
            likes: 400,
            imageUrl: "adamlz",
            timestamp: Date(),
            user: User.MOCK_USERS[3])
    ]
}
