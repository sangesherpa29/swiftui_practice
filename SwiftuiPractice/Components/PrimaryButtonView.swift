//
//  PrimaryButtonView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct PrimaryButtonView: View {
    var title: String
    var destinationView: () -> any View
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                .padding(.horizontal, 20)
                .frame(height: 60)
                .cornerRadius(10)
                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
            
            Button(title) {}
            .font(.custom("Poppins-Medium", size: 16))
            .frame(width: 200, height: 50)
            .cornerRadius(20)
            .foregroundColor(.white)
        }
        .onTapGesture {
            destinationView()
        }
    }
}

#Preview {
    PrimaryButtonView(title: "Primary Button") {
        EmptyView()
    }
}
