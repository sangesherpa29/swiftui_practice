//
//  TitleWithArrowView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct TitleWithArrowView: View {
    @State var title: String
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Button(action: {
                dismiss()
            }, label: {
                Image("arrow")
                    .resizable()
                    .frame(width: 50, height: 30, alignment: .leading)
                    .padding(.horizontal, -12)
            })
            
            Text(title)
                .font(.custom("Poppins-Bold", size: 23))
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .leading)
    }
}

#Preview {
    TitleWithArrowView(title: "Title")
}
