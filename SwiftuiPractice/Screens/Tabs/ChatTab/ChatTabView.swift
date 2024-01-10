//
//  ChatTabView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct ChatTabView: View {
    let people = [
        Person(name: "Micheal Shawn", image: "person1"),
        Person(name: "Junior Senior", image: "person2"),
        Person(name: "Marshall Matters", image: "person3")
    ]
    
    var body: some View {
        NavigationStack {
            VStack() {
                TopStackView(destinationView: NotificationsView())
                
                HStack {
                    CustomTextView(text: "Inbox", font: .poppins_semibold(fontsize: .SIZE_25))
                    Spacer()
                    ToggleSwitchView()
                }
                .frame(height: 55)
                .padding(.bottom, 15)
                
                List(people, id: \.id) { person in
                    NavigationLink(destination: ChatDetailsView()) {
                        ChatTableCellView(name: person.name, image: person.image)
                            .cornerRadius(10)
                            .presentationCompactAdaptation(.fullScreenCover)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding(.horizontal, 16.0)
            
            Spacer()
        }
    }
}

#Preview {
    ChatTabView()
}
