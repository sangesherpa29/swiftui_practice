//
//  ToggleSwitchView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct ToggleSwitchView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                .frame(width: 150, height: 52)
                .foregroundColor(.primaryColor)
            
            HStack(alignment: .center, spacing: 15) {
                Toggle("", isOn: .constant(true))
                    .frame(width: 50)
                    .toggleStyle(.switch)
                
                Text("Available")
                    .font(.custom("Poppins-Medium", size: 12))
                    .foregroundColor(.white)
            }
            .padding(0)
        }
//        Text("Somethign")
//        CustomToggler().makeBody(configuration: ToggleStyle.Configuration)
    }
}

struct CustomToggler: ToggleStyle {
    var onColor = Color.green
    var offColor = Color.gray
    var thumbColor = Color.primaryColor
    
    func makeBody(configuration : Self.Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 16, style: .circular)
                .fill(configuration.isOn ? onColor : offColor)
                .frame(width: 50, height: 30)
                .overlay(
                    Circle()
                        .fill(thumbColor)
                        .shadow(radius: 1, x: 0, y: 1)
                        .padding(1.5)
                        .offset(x: configuration.isOn ? 10 : -10))
                .animation(Animation.easeInOut(duration: 0.2))
                .onTapGesture { configuration.isOn.toggle() }
        }
        .font(.title)
        .padding(.horizontal)
    }
}

#Preview {
    ToggleSwitchView()
}
