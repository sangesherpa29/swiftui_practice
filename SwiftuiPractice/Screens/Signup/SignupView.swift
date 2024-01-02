//
//  SignupView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct SignupView: View {
    var body: some View {
        VStack {
//            Spacer()
            Image("logo")
                .resizable()
                .frame(width: 190, height: 100)
                .offset(CGSize(width: 0, height: 40.0))
            
            
            // Getting Started
            VStack(alignment: .leading) {
                Image("arrow")
                    .resizable()
                    .frame(width: 50, height: 30)
                    .offset(CGSize(width: -11.0, height: 6.0))

                Text("Getting Started")
                    .font(.custom("Poppins-Bold", size: 23))
            }
            .frame(width: UIScreen.main.bounds.width - 40, alignment: .leading)
            .padding(20)
            .offset(CGSize(width: 0, height: 40.0))
            
            
            // Form Stack
            VStack(alignment: .leading, spacing: 10) {
                OutlinedTextfield("Email")
                OutlinedTextfield("Password")
                OutlinedTextfield("Confirm Password")
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 170)
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
            .offset(CGSize(width: 0, height: 20.0))
            
            
            HStack(alignment: .top) {
                Image("checkbox")
                    .offset(CGSize(width: 0.0, height: 4.0))
                
                Text(String.Register.termsCaption)
                    .font(.custom("Poppins-Light", size: 14))
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            
            PrimaryButtonView(title: "Continue")
                .offset(CGSize(width: 0, height: 10.0))
            
            HStack {
                Text("Already have an account? ")
                    .font(.custom("Poppins-Regular", size: 14))
                
                Button("Log in") {
                    
                }
                .font(.custom("Poppins-SemiBold", size: 14))
                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
            }
            .padding(.vertical, 5)
            .offset(CGSize(width: 0, height: 10.0))
            
            Spacer()
            
        }
    }
}

#Preview {
    SignupView()
}
