//
//  BackButtonView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.dismiss) private var dismiss
    var width: CGFloat = 40
    var height: CGFloat = 25
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image("arrow")
                .resizable()
                .frame(width: width, height: height)
        }
    }
}

struct CameraButtonView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Image(systemName: "camera")
                .resizable()
                .foregroundColor(.black)
                .frame(width:25, height: 20)
        }
    }
}

struct SendMessageButtonView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Image(systemName: "paperplane")
                .resizable()
                .rotationEffect(Angle(degrees: 45))
                .foregroundColor(.black)
                .frame(width: 23, height: 23)
        }
    }
}

#Preview {
    CameraButtonView()
}
