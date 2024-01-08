//
//  FullProfileView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 05/01/2024.
//

import SwiftUI

struct FullProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack(alignment: .top) {
                        BackButtonView(width: 50, height: 30)
                            .padding(.horizontal, -10)
                        
                        VStack {
                            CircularImageComponent(image: "person2",
                                                   withWidth: 80,
                                                   withHeight: 80)
                            
                            Text("Marshall Matters")
                                .font(.custom("Poppins-Medium", size: 16))
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .offset(CGSize(width: -5.0, height: 0.0))
                        
                        Button(action: {
                            // some action here
                        }) {
                            Image("tripledots_icon")
                                .resizable()
                                .frame(width: 5, height: 20)
                        }
                    }
                    .padding(.top, 10)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    
                    // Stats Container Stack
                    HStack(alignment: .center) {
                        SingleStatView(image: "charge_icon", title: "Charges", value: "18.0")
                        SingleStatView(image: "experience_icon", title: "Experience", value: "1.0 years")
                            .offset(CGSize(width: 8.0, height: 0.0))
                            .padding(.horizontal, 70)
                        SingleStatView(image: "rating_icon", title: "Rating", value: "4.2 stars")
                    }
                    .offset(CGSize(width: 5.0, height: 0.0))
                    .padding(.vertical, 20)
                    .frame(width: UIScreen.main.bounds.width-40)
                    
                    // location container
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 200, height: 35)
                            .foregroundColor(Color(uiColor: .init(hexString: "#F4F4F4")))
                        
                        HStack {
                            Image("distance_icon")
                                .resizable()
                                .frame(width: 18, height: 13)
                            
                            Text("< 50 km away from you")
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(.black)
                        }
                    }
                    
                    // Outline container
                    OutlinedContainer(height: 110) {
                        IntermediateBoldText(text: "Short Bio")
                        Text("Test")
                            .font(.custom("Poppins-Light", size: 14))
                    }
                    .padding(.top, 10)
                    
                    OutlinedContainer(height: 110) {
                        IntermediateBoldText(text: "Pets")
                        Text("Test")
                            .font(.custom("Poppins-Light", size: 14))
                    }
                    .padding(.top, 10)
                    
                    Spacer()
                }
                .padding(.top, 10)
                .frame(width: UIScreen.main.bounds.width-40)
            }
        }
        .background(.black)
        .navigationTitle("")
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    FullProfileView()
}


struct SingleStatView: View {
    var image: String
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(value)
                .font(.custom("Poppins-SemiBold", size: 16))
            
            Text(title)
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(.black.opacity(0.8))
        }
    }
}

struct OutlinedContainer<V: View>: View {
    var content: () -> V
    var height: CGFloat = 100
    
    init(height: CGFloat, @ViewBuilder content: @escaping () -> V) {
        self.height = height
        self.content = content
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: height)
                .foregroundColor(.black.opacity(0.2))
            
            RoundedRectangle(cornerRadius: 3)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(0.4)
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 12, content: content)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
        }
    }
}
