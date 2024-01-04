//
//  ChatTabView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct ChatTabView: View {
    let people = [
        Person(name: "Micheal", image: "person1"),
        Person(name: "Junior", image: "person2"),
        Person(name: "Marshall", image: "person3")
    ]
    
    var body: some View {
        VStack() {
            TopStackView()
            
            HStack {
                LargeText(text: "Inbox")
                Spacer()
                ToggleSwitchView()
            }
            .frame(height: 55)
            .padding(.bottom, 15)
            
            List(people, id: \.id) { person in
                ChatTableCellView(name: person.name, image: person.image)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(8)
            }
            .edgesIgnoringSafeArea(.all)
            .listStyle(PlainListStyle())
            .padding(0)
            
        }
        .padding(.SCREEN_PADDING)
        
        Spacer()
    }
}

#Preview {
    ChatTabView()
}
