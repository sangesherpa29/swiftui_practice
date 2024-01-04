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
                    .frame(width: 50, height: 30)
                    .offset(CGSize(width: -11.0, height: 0.0))
            })
            
            Text(title)
                .font(.custom("Poppins-Bold", size: 23))
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .leading)
        .padding(20)
    }
}

#Preview {
    TitleWithArrowView(title: "Title")
}
