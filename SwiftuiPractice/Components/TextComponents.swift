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
            VerySmallBoldText()
        }
        
//        VStack(alignment: .leading) {
//            TitleBoldText()
//            LargeBoldText()
//            IntermediateBoldText()
//            SmallBoldText()
//            VerySmallBoldText()
//        }
    }
}

struct TitleBoldText: View {
    @State var text: String = "Title Text 25"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 25))
    }
}

struct LargeBoldText: View {
    @State var text: String = "Large Text 22"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 22))
    }
}

struct IntermediateBoldText: View {
    @State var text: String = "Intermediate Text 16"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 16))
    }
}

struct SmallBoldText: View {
    @State var text: String = "Small Text 14"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 14))
    }
}

struct VerySmallBoldText: View {
    @State var text: String = "Very Small Text 12"
    var body: some View {
        Text(text)
            .font(.custom("Poppins-SemiBold", size: 12))
    }
}

#Preview {
    TextComponents()
}
