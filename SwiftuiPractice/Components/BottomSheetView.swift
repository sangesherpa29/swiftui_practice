//
//  BottomSheetView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct BottomSheetView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isShowing = false
    
    var body: some View {
        Button("Show sheet") {
            isShowing.toggle()
        }
        .sheet(isPresented: $isShowing) {
                VStack(spacing: 0){
                    Text("Select an option")
                        .font(.custom("Poppins-Medium", size: 14))
                        .frame(width: 350, alignment: .leading)
                        .padding(.bottom, 10)

                    BottomSheetItemContainerView()
                    
                    PrimaryButtonView(title: "Close") {
                        dismiss()
                    }
                }
                .offset(CGSize(width: 0.0, height: 15.0))
                .presentationDetents([.fraction(0.5)])
        }
    }
}

struct BottomSheetItemContainerView: View {
    var body: some View {
        VStack(spacing: 10) {
            BottomSheetSingleItemView(title: "send a Request")
            BottomSheetSingleItemView(title: "rate this minder")
            BottomSheetSingleItemView(title: "report this minder")
            BottomSheetSingleItemView(title: "view profile")
        }
        .padding()
    }
}

struct BottomSheetSingleItemView: View {
    @State var title: String
    
    var body: some View {
        
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 350, height: 50)
                    .foregroundColor(Color(uiColor: .init(hexString: "#DFDFDF")))
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 350-2, height: 48)
                    .foregroundColor(Color(uiColor: .init(hexString: "#F9F9F9")))
                
                HStack {
                    Text(title)
                        .textCase(.uppercase)
                        .foregroundColor(.black)
                        .font(.custom("Poppins-Regular", size: 12))
                    
                    Spacer()
                    
                    Image("smaller_arrow_icon")
                        .resizable()
                        .frame(width: 8, height: 12)
                        .onTapGesture {
                            print("Tapped")
                        }
                }
                .frame(width: 310, height: 50)
            }
        }
        
    }
}



#Preview {
    BottomSheetView()
}