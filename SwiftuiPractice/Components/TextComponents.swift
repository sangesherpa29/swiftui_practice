//
//  TextComponents.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct TextComponents: View {
    var body: some View {
        VStack(alignment: .leading) {
            TitleBoldText()
            LargeBoldText()
            IntermediateBoldText()
            SmallBoldText()
        }
    }
}

struct TitleBoldText: View {
    @State var text: String = "Large Text"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 25))
    }
}

struct LargeBoldText: View {
    @State var text: String = "Intermediate Text"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 22))
    }
}

struct IntermediateBoldText: View {
    @State var text: String = "Intermediate Text"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 16))
    }
}

struct SmallBoldText: View {
    @State var text: String = "Intermediate Text"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 14))
    }
}

#Preview {
    TextComponents()
}
