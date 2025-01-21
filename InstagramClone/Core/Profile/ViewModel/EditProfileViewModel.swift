//
//  EditProfileViewModel.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/21/25.
//

import SwiftUI
import PhotosUI
import Firebase

class EditProfileViewModel: ObservableObject {
    
    @Published var user: User
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromitem: selectedImage) } }
    }
    @Published var profileImage: Image?
    @Published var fullname = ""
    @Published var bio = ""
    
    init(user: User) {
        self.user = user
        self.fullname = user.fullName ?? ""
        self.bio = user.bio ?? ""
    }
    
    func loadImage(fromitem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.profileImage = Image(uiImage: uiImage)
        
    }
    
    func updateUserData() async throws {
        // update profile image if changed...
        
        // update name if changed...
        if !fullname.isEmpty && user.fullName != fullname {
            
        }
        // update bio if changed...
        
    }
}
