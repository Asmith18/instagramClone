//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/21/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 12.0) {
            
            Spacer()
            
            Text("Welcome to Instagram," + "                    " + "Ruffles")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                print("Complete sign up")
            } label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
                    .foregroundColor(.white)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
