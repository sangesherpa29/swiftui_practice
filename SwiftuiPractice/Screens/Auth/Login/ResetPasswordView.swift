//
//  ResetPassword.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct ResetPasswordView: View {
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

                Text("Enter Password")
                    .font(.custom("Poppins-Bold", size: 23))
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .leading)
            .padding(20)
            
            
            VStack(alignment: .leading, spacing: 20) {
                OutlinedTextField(text: "Email", alignment: .leading)
                OutlinedTextField(text: "Password", alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.horizontal, 20)
            .padding(.vertical, 15)

            
            PrimaryButtonView(title: "Reset Password")
            
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ResetPasswordView()
}
