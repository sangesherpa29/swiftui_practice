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
    @State var text: String = ""
    var body: some View {
        Text(text)
            .font(.custom("Poppins-Bold", size: 23))
    }
}

#Preview {
    TextComponents()
}
