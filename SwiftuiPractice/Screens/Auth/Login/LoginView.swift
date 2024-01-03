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
                .frame(width: 190, height: 100)
                .offset(CGSize(width: 0, height: 40.0))
                .padding(.bottom, 50)
            
            
            // Getting Started
            VStack(alignment: .leading, spacing: 10) {
                Image("arrow")
                    .resizable()
                    .frame(width: 50, height: 30)
                    .offset(CGSize(width: -11.0, height: 0.0))
                    .onTapGesture {
                        dismiss()
                    }

                Text("Welcome Back!")
                    .font(.custom("Poppins-Bold", size: 23))
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .leading)
            .padding(20)
            
            
            VStack(alignment: .leading, spacing: 14) {
                OutlinedTextField(text: "Email", alignment: .leading)
                OutlinedTextField(text: "Password", alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.horizontal, 20)
            .padding(.vertical, 15)
            
            
            HStack(alignment: .top, spacing: 10) {
                Spacer()
                
                Text(String.Login.forgotPassword)
                    .font(.custom("Poppins-Medium", size: 14))
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.top, 4)
            .padding(.bottom, 10)
            
            PrimaryButtonView(title: "Login") {
                SignupView()
            }
            
            
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
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    LoginView()
}
