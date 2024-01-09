//
//  OtpVerificationView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct OtpVerificationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 155, height: 80)
                .padding(.bottom, 50)
            
            // Otp verification
            VStack {
                TitleWithArrowView(title: "OTP Verification")
                
                Text(String.Register.authenticationText)
                    .font(.custom("Poppins-Light", size: 12))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                    .padding(.bottom, 15)
            }
            
            // Otp Code Stack
            HStack(spacing: 12) {
                OutlinedTextField(text: "", alignment: .center, padding: 15)
                OutlinedTextField(text: "", alignment: .center, padding: 15)
                OutlinedTextField(text: "", alignment: .center, padding: 15)
                OutlinedTextField(text: "", alignment: .center, padding: 15)
                OutlinedTextField(text: "", alignment: .center, padding: 15)
                OutlinedTextField(text: "", alignment: .center, padding: 15)
            }
            .frame(height: 50)
            
            
            PrimaryButtonView(title: "Submit") {}
                .padding(.vertical)
            
            
            // Bottom Text
            HStack {
                Text("Code sent. Resend code in")
                    .font(.custom("Poppins-Light", size: 14))
                
                Button("Timer") {}
                .font(.custom("Poppins-Medium", size: 14))
                .foregroundColor(Color.primaryGreen)
            }
        }
        .padding(.horizontal, .SCREEN_PADDING)
        .offset(CGSize(width: 0.0, height: -120.0))
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    OtpVerificationView()
}
