//
//  TopStackView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct TopStackView: View {
    var body: some View {
        HStack {
            Image("dog_icon")
                .resizable()
                .frame(width: 50, height: 30)
            
            Spacer()
            
            HStack(spacing: 15) {
                Image("calendar_icon")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Image("notification_icon")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
        }
        .padding(.SCREEN_PADDING)
        
        Spacer()
    }
}

#Preview {
    TopStackView()
}
