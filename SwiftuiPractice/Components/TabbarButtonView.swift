//
//  TabbarButtonView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 10/01/2024.
//

import SwiftUI

struct TabbarButtonView: View {
    var tabBarImage: String = ""
    var tabBarText: String = ""
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 5) {
//                Rectangle()
//                    .frame(width: geo.size.width, height: 0.1)
//                    .padding(.bottom, 5)
//                    .foregroundColor(.black.opacity(0.35))
//                    .shadow(radius: 5, x: 1, y: -5)
                
                Image(tabBarImage)
                    .resizable()
                    .frame(width: 22, height: 20)
                    .opacity(isActive ? 1: 0.25)
                
                CustomTextView(text: tabBarText, font: .poppins_regular(fontsize: .SIZE_12))
            }
            .tint(isActive ? .black : .black.opacity(0.35))
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    TabbarButtonView(tabBarImage: "map_icon", tabBarText: "Map", isActive: true)
}
