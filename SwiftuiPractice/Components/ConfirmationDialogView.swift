//
//  ConfirmationDialogView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 09/01/2024.
//

import SwiftUI

struct ConfirmationDialogView: View {
    var confirmationText: String = "Confirm"
    var cancellationText: String = "Cancel"
    
    var confirmationMessage: String = "Are you sure ?"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .frame(height: 150)
                .padding()
            
            VStack(spacing: 30) {
                Text(confirmationMessage)
                    .font(.poppins_medium(fontsize: .SIZE_14))
                
                HStack {
                    ClearButtonView(title: confirmationText,
                                    titleColor: .white,
                                    backgroundColor: .primaryRed,
                                    borderColor: .primaryRed) {}
                    ClearButtonView(title: cancellationText, borderColor: .clear) {}
                }
            }
            .padding(.horizontal, 30)
        }
        .padding()
    }
}

#Preview {
    ConfirmationDialogView()
}
