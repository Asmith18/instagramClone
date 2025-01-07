//
//  SearchViewModel.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/6/25.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    func fetchAllUsers() async throws {
        let users = try await UserService.fetchAllUsers()
    }
}
