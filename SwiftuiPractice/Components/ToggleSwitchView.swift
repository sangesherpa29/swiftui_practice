//
//  ToggleSwitchView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct ToggleSwitchView: View {
    @State var isSwitchedOn = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                .frame(width: 140, height: 45)
                .foregroundColor(.primaryGreen)
            
            HStack(alignment: .center, spacing: 15) {
                Toggle(isOn: $isSwitchedOn, label: {
                })
                .toggleStyle(CustomToggleStyle())
                .frame(width: 50)
                
                Text("Available")
                    .font(.custom("Poppins-Medium", size: 12))
                    .foregroundColor(.white)
            }
            .offset(CGSize(width: -5.0, height: 0.0))
            .padding(0)
        }
    }
}

struct CustomToggleStyle: ToggleStyle {
    var onOffColor = Color.white
    var thumbColor = Color.primaryGreen
    
    func makeBody(configuration : Self.Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 16, style: .circular)
                .fill(onOffColor)
                .frame(width: 40, height: 20)
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
