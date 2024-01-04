//
//  NotificationsItemView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct NotificationsItemView: View {
    @State var title: String
    @State var image: String
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            HStack(alignment: .center, spacing: 20) {
                // Conversation Image
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                // Conversation Title
                VStack(alignment: .leading, spacing: 5) {
                    Text(title)
                        .font(.custom("Poppins-Medium", size: 16))
                        .foregroundColor(.black)
                    
                    Text("4 hours ago")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                // Arrow image
//                Image("smaller_arrow_icon")
//                    .resizable()
//                    .frame(width: 12, height: 17)
            }
            .frame(width: .infinity)
            .padding(.vertical, 10)
            .cornerRadius(10)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NotificationsItemView(title: "test (3 paws)", image: "person1")
}
