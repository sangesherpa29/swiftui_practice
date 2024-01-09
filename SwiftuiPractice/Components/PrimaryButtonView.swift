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
                    .stroke(Color.primaryGreen, lineWidth: 2)
                    .fill(Color.primaryGreen)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 45)
                    .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
                
                Text(title)
                    .font(.custom("Poppins-Medium", size: 14))
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }
        }
    }
}

struct SecondaryButtonView: View {
    var title: String
    var action: ()->Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                    .stroke(.black, lineWidth: 1)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 45)
                    .foregroundColor(.white)
                
                Text(title)
                    .font(.custom("Poppins-Medium", size: 14))
                    .cornerRadius(20)
                    .foregroundColor(.black)
            }
        }
    }
}

struct ClearButtonView: View {
    var title: String
    var titleColor: Color = .black
    var font: Font = .custom("Poppins-Medium", size: 14)
    var backgroundColor: Color = .clear
    var borderColor: Color = .black
    var action: ()->Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                    .stroke(borderColor, lineWidth: 1)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 45)
                
                Text(title)
                    .font(font)
                    .cornerRadius(20)
                    .foregroundColor(titleColor)
            }
            .background(backgroundColor)
        }
    }
}

#Preview {
    PrimaryButtonView(title: "Primary Button") {}
}

#Preview {
    ClearButtonView(title: "Clear Button") {}
}

