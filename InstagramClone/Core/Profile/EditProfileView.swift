//
//  EditProfileView.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/7/25.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    
    var body: some View {
        VStack {
            // toolbar
            VStack {
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        print("Update Profile info")
                    } label: {
                        Text("done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding()
                
                Divider()
            }
            // edit profile pic
            
            PhotosPicker(selection: $selectedImage) {
                VStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundStyle(.white)
                        .background(.gray)
                        .clipShape(Circle())
                    
                    Text("Edit Profile Picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            
            // edit profile info
        }
    }
}

#Preview {
    EditProfileView()
}
