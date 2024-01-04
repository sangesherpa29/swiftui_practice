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
                .frame(width: 155, height: 80)
                .offset(CGSize(width: 0, height: 40.0))
                .padding(.bottom, 50)
            
            
            // Getting Started
            TitleWithArrowView(title: "Getting Started")
            
            VStack(alignment: .leading, spacing: 15) {
                OutlinedTextField(text: "Email", alignment: .leading, padding: 12)
                OutlinedTextField(text: "Password", alignment: .leading, padding: 12)
                OutlinedTextField(text: "Confirm password", alignment: .leading, padding: 12)
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            
            
            HStack(alignment: .top, spacing: 10) {
                Image("checkbox")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .offset(CGSize(width: 4.0, height: 4.0))
                
                VStack(alignment: .leading) {
                    Text(String.Register.termsCaption)
                        .font(.custom("Poppins-Light", size: 12))
                        .offset(CGSize(width: 4.0, height: 0.0))
                    
                    Button("Terms and Conditions") {}
                        .foregroundColor(.primaryColor)
                        .font(.custom("Poppins-SemiBold", size: 12))
                        .offset(CGSize(width: 4.0, height: 0.0))
                }
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(10)
            
            PrimaryButtonView(title: "Continue") {}
            
            HStack(spacing: 5) {
                Text("Already have an account? ")
                    .font(.custom("Poppins-Regular", size: 12))
                
                NavigationLink("Login") {
                    OtpVerificationView()
                }
                .font(.custom("Poppins-SemiBold", size: 12))
                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
            }
            .padding(.top, 2)
            
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SignupView()
}
