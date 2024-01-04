//
//  ChatDetailsView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct ChatDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            // Conversation title
            ChatTopbarView()
            
            HStack {
                PrimaryButtonView(title: "Send Request") {}
                SecondaryButtonView(title: "Manage Bookings") {}
            }
            .background(.cyan)
        }
        .padding(.SCREEN_PADDING)
        .navigationBarBackButtonHidden()
        
        Spacer()
    }
}

#Preview {
    ChatDetailsView()
}


// Conversation title
struct ChatTopbarView: View {
    var body: some View {
        HStack(alignment: .center) {
            BackButtonView().offset(CGSize(width: -10.0, height: 0.0))
            
            HStack {
                Image("person4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Ameer Sa")
                    .font(.custom("Poppins-Medium", size: 16))
                
                Image("verified_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                    .clipShape(Circle())
            }
            .offset(CGSize(width: -10.0, height: 0.0))
            
            Spacer()
            
            Image("phone_icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .clipShape(Circle())
        }
        .frame(width: UIScreen.main.bounds.width-40)
    }
}
