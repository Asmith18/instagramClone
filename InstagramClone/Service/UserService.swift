//
//  UserService.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/6/25.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let documents = snapshot.documents
        // turning data to a user for us to display
        return documents.compactMap({ try? $0.data(as: User.self) })
    }
}
