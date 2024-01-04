//
//  ChatTableItemView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct ChatTableCellView: View {
    @State var name: String
    @State var image: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            // Conversation Image
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
            
            // Conversation Title
            VStack(alignment: .leading, spacing: 10) {
                Text(name)
                    .font(.custom("Poppins-SemiBold", size: 14))
                
                Text("Yes, I am available. You can request using the request now....")
                    .font(.custom("Poppins-Regular", size: 12))
                    .frame(width: 200)
                    .foregroundColor(.secondary)
                
                // Pending View
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 30)
                        .foregroundColor(.black).opacity(0.1)
                    
                    Text("+3 Request Pending")
                        .font(.custom("Poppins-Medium", size: 12))
                        .foregroundColor(.black).opacity(0.9)
                }
            }
            
            // Conversation Time
            Text("Today")
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(.secondary)
                .offset(CGSize(width: -5.0, height: -40.0))
        }
        .frame(width: .infinity)
        .padding(.vertical, 10)
        .cornerRadius(10)
    }
}

#Preview {
    ChatTableCellView(name: "Name", image: "dog_icon")
}
