//
//  TopStackView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct TopStackView<V: View>: View {
    private var destinationView: V
    
    init(destinationView: V) {
        self.destinationView = destinationView
    }
    
    var body: some View {
        HStack {
            Image("dog_icon")
                .resizable()
                .frame(width: 40, height: 24)
            
            Spacer()
            
            NavigationLink(destination: destinationView) {
                Image("notification_icon")
                    .resizable()
                    .frame(width: 22, height: 22)
            }
            
        }
        .padding(.bottom)
    }
}

#Preview {
    TopStackView(destinationView: EmptyView())
}
