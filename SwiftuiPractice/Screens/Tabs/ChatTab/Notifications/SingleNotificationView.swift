//
//  SingleNotificationView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct SingleNotificationView: View {
    var body: some View {
        VStack {
            TitleWithArrowView(title: "Single Notification")
            Spacer()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SingleNotificationView()
}
