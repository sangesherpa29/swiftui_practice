//
//  ChatTabView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct ChatTabView: View {
    var body: some View {
        VStack {
            TopStackView()
            
            HStack {
                LargeText(text: "Inbox")
                Spacer()
                ToggleSwitchView()
            }
            .frame(height: 60)
//            .background(.blue)
        }
        .frame(height: 100)
        .padding(.horizontal, .SCREEN_PADDING)
        
        Spacer()
    }
}

#Preview {
    ChatTabView()
}
