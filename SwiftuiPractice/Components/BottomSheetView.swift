//
//  BottomSheetView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct BottomSheetView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 0){
            Text("Select Option")
                .font(.custom("Poppins-Medium", size: 14))
                .frame(width: 350, alignment: .leading)
                .padding(.bottom, 10)

            BottomSheetItemContainerView()
            
            PrimaryButtonView(title: "Close") {
                dismiss()
            }
            .padding(.horizontal, .SCREEN_PADDING)
        }
        .offset(CGSize(width: 0.0, height: 15.0))
        .presentationDetents([.fraction(0.5)])
    }
}

struct BottomSheetItemContainerView: View {
    var body: some View {
        VStack(spacing: 10) {
            BottomSheetSingleItemView(title: "Rate and Review")
            BottomSheetSingleItemView(title: "Send Request")
            BottomSheetSingleItemView(title: "View Sent Request")
            BottomSheetSingleItemView(title: "View Received Request")
            BottomSheetSingleItemView(title: "Report This Account")
            BottomSheetSingleItemView(title: "View Profile")
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
                        .foregroundColor(.black)
                        .font(.custom("Poppins-Regular", size: 12))
                    
                    Spacer()
                    
                    Image("smaller_arrow_icon_gray")
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
