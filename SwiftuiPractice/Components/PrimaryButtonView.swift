//
//  PrimaryButtonView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct PrimaryButtonView: View {
    var title: String
    var action: ()->Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                    .padding(.horizontal, 20)
                    .frame(height: 50)
                    .cornerRadius(10)
                    .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
                
                Text(title)
                    .font(.custom("Poppins-Medium", size: 14))
                    .frame(width: 200)
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    PrimaryButtonView(title: "Primary Button") {}
}
