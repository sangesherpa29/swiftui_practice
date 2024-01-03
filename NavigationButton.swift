//
//  NavigationButton.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import Foundation
import SwiftUI

struct NavigationButton<Label: View, Destination: View>: View {
    var label: () -> Label
    var destination: () -> Destination
    
    init(@ViewBuilder label: @escaping () -> Label,
         @ViewBuilder destination: @escaping () -> Destination) {
        self.label = label
        self.destination = destination
    }
    
    var body: some View {
        ZStack {
            NavigationLink {
                self.destination()
            } label: {
                EmptyView()
            }
            .opacity(0)
            
            self.label()
        }
    }
}
