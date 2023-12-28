//
//  Images.swift
//  SwiftuiPractice
//
//  Created by Web and App on 26/12/2023.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack(spacing: 20){
            
            Image("img")
                .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .aspectRatio(contentMode: .fit)
//                .rotationEffect(.degrees(180))
                .frame(width: 300, height: 200)
                .border(.red, width: 2)
            
            Image(systemName: "person.circle.fill")
                .font(.system(size: 100))
                .foregroundColor(.pink)
                .border(.red, width: 2)
            
            Text("Person")
                .font(.subheadline)
                .foregroundColor(.blue)
        }
        .padding()
    }
}

#Preview {
    Images()
}
