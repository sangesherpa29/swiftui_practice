//
//  LoginView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 155, height: 80)
                .offset(CGSize(width: 0, height: 40.0))
                .padding(.bottom, 50)
            
            
            // Getting Started
            TitleWithArrowView(title: "Welcome Back!")
            
            VStack(alignment: .leading, spacing: 14) {
                OutlinedTextField(text: "Email", alignment: .leading)
                OutlinedTextField(text: "Password", alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.vertical, 15)
            
            
            HStack(alignment: .top, spacing: 10) {
                Spacer()
                
                Text(String.Login.forgotPassword)
                    .font(.custom("Poppins-Medium", size: 14))
            }
            .padding(.top, 4)
            .padding(.bottom, 10)
            
            PrimaryButtonView(title: "Login") {}
            
            HStack(spacing: 5) {
                Text("Don't have an account? ")
                    .font(.custom("Poppins-Regular", size: 14))
                
                NavigationLink("Register") {
                    OtpVerificationView()
                    OtpVerificationView()
                }
                .font(.custom("Poppins-SemiBold", size: 14))
                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
            }
            .padding(.top, 5)
            
            Spacer()
        }
        .padding(.horizontal, .SCREEN_PADDING)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    LoginView()
}
