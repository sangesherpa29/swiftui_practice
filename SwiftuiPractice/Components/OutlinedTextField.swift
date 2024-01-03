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
    
    var body: some View {
        TextField("", text: $text)
            .font(.custom("Poppins-Regular", size: 14))
            .foregroundColor(.black).opacity(0.5)
            .padding(10)
            .border(Color.black, width: 0.2)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    OutlinedTextField(text: "Test String", alignment: .center)
}
