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
            caption: "Caption 1",
            likes: 100,
            imageUrl: "ruffles",
            timestamp: Date(),
            user: User.MOCK_USERS[0]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 2",
            likes: 200, imageUrl: "ruffles",
            timestamp: Date(),
            user: User.MOCK_USERS[1]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 3",
            likes: 300,
            imageUrl: "ruffles",
            timestamp: Date(),
            user: User.MOCK_USERS[2]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 4",
            likes: 400,
            imageUrl: "ruffles",
            timestamp: Date(),
            user: User.MOCK_USERS[3]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 5",
            likes: 500,
            imageUrl: "ruffles",
            timestamp: Date(),
            user: User.MOCK_USERS[4]),
    ]
}
