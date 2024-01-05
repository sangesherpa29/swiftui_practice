//
//  NotificationsView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct NotificationsView: View {
    let notifications = [
        Notification(title: "test (3 paws).",
                     fromPerson: Person(name: "Micheal", image: "person1")),
        Notification(title: "You have a new minding request from airbnb1.",
                     fromPerson: Person(name: "Junior", image: "person2")),
        Notification(title: "airbnb1 has accepted your minding request.",
                     fromPerson: Person(name: "Marshall", image: "person3")),
        Notification(title: "test (3 paws).",
                     fromPerson: Person(name: "Micheal", image: "person1")),
        Notification(title: "You have a new minding request from airbnb1.",
                     fromPerson: Person(name: "Junior", image: "person2"))
    ]
    
    var body: some View {
        NavigationStack {
            // Top Title
            TitleWithArrowView(title: "Notifications")
                .padding(.vertical)
            
            // Notifications list
            List(notifications, id: \.id) { notification in
                NavigationLink(destination: SingleNotificationView()) {
                    NotificationsItemView(title: notification.title, image: notification.fromPerson.image)
                }
            }
            .listStyle(PlainListStyle())
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NotificationsView()
}
