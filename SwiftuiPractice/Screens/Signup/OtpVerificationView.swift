//
//  OtpVerificationView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct OtpVerificationView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 190, height: 100)
            
            
            // Getting Started
            VStack(alignment: .leading, spacing: 12) {
                Image("arrow")
                    .resizable()
                    .frame(width: 50, height: 30)
                    .offset(CGSize(width: -11.0, height: 6.0))
                
                Text("OTP Verification")
                    .font(.custom("Poppins-Bold", size: 23))
                
                Text(String.Register.authenticationText)
                    .font(.custom("Poppins-Light", size: 15))
                    .lineSpacing(3)
            }
            .frame(width: UIScreen.main.bounds.width-40, alignment: .leading)
            .padding(20)
            
            
            // Otp Code Stack
            HStack(spacing: 12) {
                OutlinedTextField(text: "", alignment: .center)
                OutlinedTextField(text: "", alignment: .center)
                OutlinedTextField(text: "", alignment: .center)
                OutlinedTextField(text: "", alignment: .center)
                OutlinedTextField(text: "", alignment: .center)
                OutlinedTextField(text: "", alignment: .center)
            }
            .frame(height: 50)
            .padding(.horizontal, 20)
            
            
            PrimaryButtonView(title: "Submit")
                .padding(.vertical)
            
            
            // Bottom Text
            HStack {
                Text("Code sent. Resend code in")
                    .font(.custom("Poppins-Light", size: 14))
                    .foregroundColor(.secondary)
                
                Button("Timer") {
                    // Perform some action on Submit
                }
                .font(.custom("Poppins-Medium", size: 14))
                .foregroundColor(Color.primaryColor)
            }
            .offset(CGSize(width: 0.0, height: -5.0))
        }
        .offset(CGSize(width: 0.0, height: 50.0))
        Spacer()
    }
}

#Preview {
    OtpVerificationView()
}
