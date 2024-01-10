//
//  ContentView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 26/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tabs

    var body: some View {
        VStack {
            switch selectedTab {
            case .Map:
                MapView()
            case .Chat:
                ChatTabView()
            case .Profile:
                ProfileView()
            }
            
            Spacer()
            
            VStack(spacing: 0) {
                Rectangle()
                    .frame(height: 0.2)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black.opacity(0.35))
                    .shadow(radius: 5, x: 1, y: -5)
                
                CustomTabbarView(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    ContentView(selectedTab: .Chat)
}
