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
        .init(id: NSUUID().uuidString, username: "Adam", profileImageName: "ruffles", fullName: "Adam Smith", bio: "Hello World", email: "adam@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ed Bolian", profileImageName: "revulto", fullName: "", bio: "Founder of VinWiki", email: "BigEd@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Adam", profileImageName: "ruffles", fullName: "Adam Smith", bio: "Hello World", email: "adam@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Adam", profileImageName: "ruffles", fullName: "Adam Smith", bio: "Hello World", email: "adam@gmail.com"),
    ]
}


