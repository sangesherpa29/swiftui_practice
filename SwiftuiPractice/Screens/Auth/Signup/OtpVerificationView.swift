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
                .padding(0)
            
            // Otp verification
            TitleWithArrowView(title: "OTP Verification")
            
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
            .padding(.horizontal, 20)
            
            
            PrimaryButtonView(title: "Submit") {}
                .padding(.vertical)
            
            
            // Bottom Text
            HStack {
                Text("Code sent. Resend code in")
                    .font(.custom("Poppins-Light", size: 14))
                    .foregroundColor(.secondary)
                
                Button("Timer") {
                    // Perform some action on submit
                }
                .font(.custom("Poppins-Medium", size: 14))
                .foregroundColor(Color.primaryColor)
            }
        }
        .offset(CGSize(width: 0.0, height: -120.0))
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    OtpVerificationView()
}
