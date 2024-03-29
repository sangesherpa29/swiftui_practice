//
//  OutlinedTextField.swift
//  SwiftuiPractice
//
//  Created by Web and App on 03/01/2024.
//

import SwiftUI

struct OutlinedTextField: View {
    @State var text: String
    @State var alignment: TextAlignment
    @State var padding: CGFloat = 14
    
    var body: some View {
        TextField("", text: $text)
            .font(.custom("Poppins-Regular", size: 12))
            .foregroundColor(.black).opacity(0.5)
            .padding(padding)
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(.black, lineWidth: 0.2))
//            .border(Color.black, width: 0.2)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    OutlinedTextField(text: "Test String", alignment: .center)
}
