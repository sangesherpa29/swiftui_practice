//
//  TextComponents.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct CustomTextView: View {
    var text: String = "Text"
    var font: Font = .poppins_medium(fontsize: .SIZE_12)
    
    var body: some View {
        Text(text)
            .font(font)
    }
}

#Preview {
    CustomTextView()
}
