//
//  ToggleSwitchView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct ToggleSwitchView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                .frame(width: 170, height: 60)
                .foregroundColor(.primaryColor)
            
            HStack(alignment: .center, spacing: 15) {
                Toggle("", isOn: .constant(true))
                    .controlSize(.mini)
                    .frame(width: 50)
                    .tint(.white)
                
                Text("Available")
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(.white)
            }
            .frame(width: 180, height: 50)
        }
        .padding(0)
    }
}

#Preview {
    ToggleSwitchView()
}
