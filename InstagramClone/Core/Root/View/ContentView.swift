//
//  ContentView.swift
//  InstagramClone
//
//  Created by Adam Smith on 1/2/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ContentViewModel()
    var body: some View {
        Group {
            if viewmodel.userSession == nil {
                LoginView()
            } else  {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
