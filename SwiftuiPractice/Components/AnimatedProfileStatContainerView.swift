//
//  AnimatedProfileStatContainerView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 09/01/2024.
//

import SwiftUI

struct AnimatedProfileStatContainerView: View {
    @State private var angle = -90.0
    @State private var showStats = true
    
    @State private var minderDistance = "< 50 km away from you"
    @State private var minderRate = "18.0"
    @State private var minderExperience = "1.0"
    @State private var minderRating = "4.2 stars"
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // Stats Container Stack
                if showStats {
                    HStack(alignment: .center, spacing: 60) {
                        SingleStatView(dimension: 40, image: "charge_icon", title: "Charges", value: minderRate)
                        SingleStatView(dimension: 40, image: "experience_icon", title: "Experience", value: minderExperience)
                            .offset(CGSize(width: 4.0, height: 0.0))
                        SingleStatView(dimension: 40, image: "rating_icon", title: "Rating", value: minderRating)
                    }
                    .offset(CGSize(width: 4.0, height: 0.0))
                    .padding(.top, 20)
                    .frame(width: UIScreen.main.bounds.width-40)
                }
                
                InfoTextWithImageView(width: 200,
                                      image: "distance_icon",
                                      text: minderDistance,
                                      backgroundColor: .clear)
                .padding(.top, 10)
                
                
                HStack {
                    NavigationLink(destination: FullProfileView()) {
                        HStack(spacing: 5) {
                            Text("See full profile")
                                .font(.custom("Poppins-Regular", size: 12))
                            
                            Image("smaller_arrow_icon_gray")
                                .resizable()
                                .frame(width: 8, height: 12)
                        }
                        .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    // Toggler Button
                    Button(action: {
                        angle += 180
                        showStats.toggle()
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.primaryGreen, lineWidth: 1)
                                .frame(width: 30, height: 23)
                            
                            Image("smaller_arrow_icon_gray")
                                .resizable()
                                .frame(width: 8, height: 13)
                                .rotationEffect(.degrees(angle))
                                .background(.clear)
                        }
                        .animation(.linear(duration: 0))
                        .background(.white)
                    }
                }
                .padding(.horizontal, .SCREEN_PADDING)
                .padding(.bottom)
                
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color(uiColor: .init(hexString: "#F0F6F4")))
    }
}

#Preview {
    AnimatedProfileStatContainerView()
}
