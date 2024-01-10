//
//  CustomTabbarView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 10/01/2024.
//

import SwiftUI

enum Tabs {
    case Map
    case Chat
    case Profile
}

struct CustomTabbarView: View {
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(spacing: 0) {
            // maptab
            Button(action: {
                selectedTab = .Map
            }, label: {
                TabbarButtonView(tabBarImage: "map_icon", tabBarText: "Map", isActive: selectedTab == .Map)
            })
            
            
            // maptab
            Button(action: {
                selectedTab = .Chat
            }, label: {
                TabbarButtonView(tabBarImage: "chat_icon", tabBarText: "Chat", isActive: selectedTab == .Chat)
            })
            
            
            // maptab
            Button(action: {
                selectedTab = .Profile
            }, label: {
                TabbarButtonView(tabBarImage: "profile_icon", tabBarText: "Profile", isActive: selectedTab == .Profile)
            })
        }
        .frame(height: 80)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    CustomTabbarView(selectedTab: .constant(.Map))
}
