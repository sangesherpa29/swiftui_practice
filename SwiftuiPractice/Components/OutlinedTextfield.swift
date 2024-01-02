//
//  OutlinedTextfield.swift
//  SwiftuiPractice
//
//  Created by Web and App on 02/01/2024.
//

import SwiftUI
import MaterialComponents

struct OutlinedTextfield: UIViewRepresentable {
    
    let placeholder: String
    
    init(_ placeholder: String) {
        self.placeholder = placeholder
    }
    
    func makeUIView(context: Context) -> MDCOutlinedTextField {
        return MDCOutlinedTextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    func updateUIView(_ uiView: MDCOutlinedTextField, context: Context) {
        uiView.placeholder = self.placeholder
    }
}
