//
//  User.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/29/24.


import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageName: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Adam432456", profileImageName: "ruffles", fullName: "Adam", bio: "Hello World!", email: "adam@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ed Bolian", profileImageName: "revulto", fullName: "Ed", bio: "Founder of VinWiki", email: "BigEd@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Supercar_Ron", profileImageName: "ron", fullName: "Ron", bio: "Supercar Collector", email: "Ron@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Adam LZ", profileImageName: "adamlz", fullName: "Adam", bio: "Best Drifter in the world!", email: "adamlz@gmail.com"),
    ]
}


