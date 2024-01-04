//
//  GettingStartedView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct GettingStartedView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("dogimage")
                    .resizable()
                    .frame(width: 200, height: 250)
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
                
                PrimaryButtonView(title: "Get Started") {}
                .offset(CGSize(width: 0.0, height: -8.0))
                
                
                // Optional SignIn
                HStack(spacing: 5) {
                    Text("Already have an account ?")
                        .font(.custom("Poppins-Regular", size: 12))
                    
                    NavigationLink("Login") {
                        SignupView()
                    }
                    .font(.custom("Poppins-SemiBold", size: 12))
                    .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
                }
                .padding(.bottom, 10)
            }
        }
    }
}

#Preview {
    GettingStartedView()
}
