//
//  ContentView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 26/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChatTabView()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                        .renderingMode(.template)
                }
        }
        .accentColor(.primaryColor)
    }
}

#Preview {
    ContentView()
}
