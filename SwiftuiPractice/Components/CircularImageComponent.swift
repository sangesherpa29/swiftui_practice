//
//  CircularImageComponent.swift
//  SwiftuiPractice
//
//  Created by Web and App on 05/01/2024.
//

import SwiftUI

struct CircularImageComponent: View {
    var image: String
    var withWidth: CGFloat
    var withHeight: CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: withWidth, height: withHeight)
            .clipShape(Circle())
    }
}

#Preview {
    CircularImageComponent(image: "person2", withWidth: 80, withHeight: 80)
}
