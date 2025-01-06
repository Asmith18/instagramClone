//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/6/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""

    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
