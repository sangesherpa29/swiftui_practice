//
//  GettingStartedView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct GettingStartedView: View {
    var body: some View {
        VStack {
            Image("dogimage")
                .padding(.top, 50)
            Spacer()
            
            Text("Air Bark'n'Bark")
                .font(Font.custom("Poppins-SemiBold", size: 23))
                .padding(.vertical)
            
            Text(String.Landing.pagerText1)
                .font(Font.custom("Poppins-Regular", size: 14))
                .multilineTextAlignment(.center)
                .lineSpacing(3)
                .frame(alignment: .center)
                .padding(.bottom, 80)
            
            Spacer()
            
            // Get Started Button
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                    .padding(.horizontal, 20)
                    .frame(height: 50)
                    .cornerRadius(10)
                    .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
                
                Button("Get Started") {
                    
                }
                .font(.custom("Poppins-Medium", size: 16))
                .frame(width: 200, height: 50)
                .cornerRadius(20)
                .foregroundColor(.white)
            }
            
            // Optional SignIn
            HStack {
                Text("Already have an account? ")
                    .font(.custom("Poppins-Regular", size: 14))
                
                Button("Log in") {
                    
                }
                .font(.custom("Poppins-SemiBold", size: 14))
                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
            }
            .padding(.vertical, 5)
            
        }
    }
}

#Preview {
    GettingStartedView()
}
