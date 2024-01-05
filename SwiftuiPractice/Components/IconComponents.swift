//
//  BackButtonView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image("arrow")
                .resizable()
                .frame(width: 40, height: 25)
        }
    }
}

struct CameraButtonView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "camera")
                .resizable()
                .foregroundColor(.black)
                .frame(width: 25, height: 20)
        }
    }
}

struct SendMessageButtonView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
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
    BackButtonView()
}
