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
                .frame(width: 40, height: 24)
            
            Spacer()
            
            Image("notification_icon")
                .resizable()
                .frame(width: 20, height: 20)
        }
        .padding(.bottom)
    }
}

#Preview {
    TopStackView()
}
