//
//  BackButtonView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image("arrow")
                .resizable()
                .frame(width: 50, height: 30)
        }
    }
}

#Preview {
    BackButtonView()
}
