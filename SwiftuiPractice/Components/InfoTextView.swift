//
//  InfoTextView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 08/01/2024.
//

import SwiftUI

struct InfoTextView: View {
    var width: CGFloat
    var height: CGFloat = 35
    var text: String
    var backgroundColor: Color = Color(uiColor: .init(hexString: "#F4F4F4"))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: width, height: height)
                .foregroundColor(backgroundColor)
            
            Text(text)
                .font(.custom("Poppins-Medium", size: 12))
                .foregroundColor(.black)
        }
    }
}

struct InfoTextWithImageView: View {
    var width: CGFloat
    var height: CGFloat = 35
    var image: String? = nil
    var text: String
    var backgroundColor: Color = Color(uiColor: .init(hexString: "#F4F4F4"))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: width, height: height)
                .foregroundColor(backgroundColor)
            
            HStack(alignment: .center) {
                Image(image ?? "")
                    .resizable()
                    .frame(width: 18, height: 13)
                
                Text(text)
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(.black)
            }
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    InfoTextView(width: 100, text: "Test")
}

#Preview {
    InfoTextWithImageView(width: 100, image: "distance_icon", text: "Test")
}
