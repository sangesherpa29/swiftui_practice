//
//  TextComponents.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct TextComponents: View {
    var body: some View {
        LargeText()
    }
}

struct LargeText: View {
    @State var text: String = "Large Text"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 25))
    }
}

#Preview {
    TextComponents()
}
