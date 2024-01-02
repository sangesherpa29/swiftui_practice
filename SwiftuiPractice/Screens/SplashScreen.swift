//
//  SplashScreen.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        SplashView()
    }
}

struct SplashView: View {
    var body: some View {
        VStack {
            Image("topdog")
                .resizable()
                .frame(width: 420, height: 250)
                .offset(CGSize(width: 0, height: -60))

            Spacer()
            
            Image("logo")
                .resizable()
                .frame(width: 185, height: 100)
                .padding(.bottom, 80)
                .offset(CGSize(width: 0, height: -10.0))
            
            Spacer()
            Image("nose")
                .resizable()
                .frame(width: 130, height: 80)
                .padding(.bottom, 80)
        }
    }
}

#Preview {
    SplashScreen()
}
