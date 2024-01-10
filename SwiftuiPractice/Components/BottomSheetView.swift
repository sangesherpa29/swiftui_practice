//
//  BottomSheetView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct BottomSheetView: View {
    @Binding var isShowing : Bool
    
    var body: some View {
        VStack(spacing: 0){
            Text("Select Option")
                .font(.custom("Poppins-Medium", size: 14))
                .frame(width: 350, alignment: .leading)
                .padding(.bottom, 10)
            
            VStack(spacing: 10) {
                BottomSheetSingleItemView(title: "Rate and Review", destinationView: FullProfileView()) {
                    isShowing = false
                }
                //                BottomSheetSingleItemView(isShowing: $isShowing, title: "Send Request", destinationView: FullProfileView())
                //                BottomSheetSingleItemView(isShowing: $isShowing, title: "View Sent Request", destinationView: FullProfileView())
                //                BottomSheetSingleItemView(isShowing: $isShowing, title: "View Received Request", destinationView: FullProfileView())
                //                BottomSheetSingleItemView(isShowing: $isShowing, title: "Report This Account", destinationView: FullProfileView())
                //                BottomSheetSingleItemView(isShowing: $isShowing, title: "View Profile", destinationView: FullProfileView())
            }
            .padding()
            
            PrimaryButtonView(title: "Close") {
                isShowing = false
            }
            .padding(.horizontal, .SCREEN_PADDING)
        }
        .offset(CGSize(width: 0.0, height: 15.0))
        .presentationDetents([.fraction(0.5)])
    }
}


struct BottomSheetSingleItemView<V: View>: View {
    @State var title = ""
    var destinationView: V
    var isShowing: ()->Void
    
    var body: some View {
        NavigationLink(destination: destinationView) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(uiColor: .init(hexString: "#DFDFDF")), lineWidth: 1)
                    .fill(Color(uiColor: .init(hexString: "#F9F9F9")))
                    .frame(width: 350, height: 50)
                
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
    BottomSheetView(isShowing: .constant(false))
}
