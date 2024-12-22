//
//  StatView.swift
//  InstagramClone
//
//  Created by Adam Smith on 12/21/24.
//

import SwiftUI

struct StatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            
            Text("\(title)")
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    StatView(value: 2000, title: "Posts")
}
