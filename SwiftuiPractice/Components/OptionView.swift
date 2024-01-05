//
//  OptionView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 05/01/2024.
//

import SwiftUI

struct OptionView: View {
    var title: String
    
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 350, height: 60)
                    .foregroundColor(Color(uiColor: .init(hexString: "#DFDFDF")))
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 349, height: 59)
                    .foregroundColor(.white)
                
                HStack {
                    Text(title)
                        .foregroundColor(.black)
                        .font(.custom("Poppins-Medium", size: 12))
                    
                    Spacer()
                    
                    Image("smaller_arrow_icon_gray")
                        .resizable()
                        .frame(width: 6, height: 12)
                        .onTapGesture {
                            print("Tapped")
                        }
                }
                .frame(width: 310)
            }
        }
    }
}

#Preview {
    OptionView(title: "Option")
}
