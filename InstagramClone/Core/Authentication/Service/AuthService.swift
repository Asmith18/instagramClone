//
//  AuthService.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/2/25.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        
    }
    
    func loadUserDate() async throws {
        
    }
    
    func signout() {
        
    }
}
