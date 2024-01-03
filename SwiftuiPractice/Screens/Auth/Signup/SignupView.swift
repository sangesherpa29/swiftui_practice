//
//  SignupView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct SignupView: View {
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

                Text("Get Started")
                    .font(.custom("Poppins-Bold", size: 23))
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .leading)
            .padding(20)
            
            
            VStack(alignment: .leading, spacing: 14) {
                OutlinedTextField(text: "Email", alignment: .leading)
                OutlinedTextField(text: "Password", alignment: .leading)
                OutlinedTextField(text: "Confirm password", alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.horizontal, 20)
            .padding(.vertical, 15)
            
            
            HStack(alignment: .top, spacing: 10) {
                Image("checkbox")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .offset(CGSize(width: 4.0, height: 4.0))
                
                VStack(alignment: .leading) {
                    Text(String.Register.termsCaption)
                        .font(.custom("Poppins-Light", size: 14))
                        .offset(CGSize(width: 4.0, height: 0.0))
                    
                    Button("Terms and Conditions") {}
                        .foregroundColor(.primaryColor)
                        .font(.custom("Poppins-SemiBold", size: 14))
                        .offset(CGSize(width: 4.0, height: 0.0))
                }
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(10)
            
            PrimaryButtonView(title: "Continue") {
                SignupView()
            }
            
            
            HStack {
                Text("Already have an account? ")
                    .font(.custom("Poppins-Regular", size: 14))
                
                NavigationLink("Log in") {
                    OtpVerificationView()
                    OtpVerificationView()
                }
                .font(.custom("Poppins-SemiBold", size: 14))
                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
            }
            .padding(.top, 8)
            
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SignupView()
}
