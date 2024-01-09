//
//  ProfileView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 05/01/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                // Top Stack
                VStack(spacing: 15) {
                    CircularImageComponent(image: "person1", withWidth: 80, withHeight: 80)
                    
                    Text("Marshall Matters")
                        .font(.custom("Poppins-Medium", size: 16))
                    
                    // Location Stack
                    HStack {
                        Image("location_icon")
                            .resizable()
                            .frame(width: 15, height: 17)
                        
                        Text("1 Stockton Street")
                            .font(.custom("Poppins-Medium", size: 12))
                            .foregroundColor(Color(uiColor: .init(hexString: "#656665")))
                        
                        Text("|")
                            .font(.custom("Poppins-Light", size: 12))
                            .foregroundColor(Color(uiColor: .init(hexString: "#656665")))
                        
                        Image("phone_icon_gray")
                            .resizable()
                            .frame(width: 13, height: 13)
                        
                        Text("1 Stockton Street")
                            .font(.custom("Poppins-Medium", size: 12))
                            .foregroundColor(Color(uiColor: .init(hexString: "#656665")))
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                .stroke(Color.primaryGreen, lineWidth: 1)
                                .fill(Color.primaryGreen)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 45)
                                .foregroundColor(Color(uiColor: .init(hexString: "#426A5A")))
                        
                            HStack(alignment: .center) {
                                Image(systemName: "square.and.pencil")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .tint(.white)
                                    .font(.system(.title, weight: .bold))
                                
                                Text("Edit Profile")
                                    .font(.custom("Poppins-Medium", size: 14))
                                    .cornerRadius(20)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(width: 150)
                }
                .padding(.vertical, 20)
                
                // Edit Options
                VStack(spacing: 15) {
                    OptionView(title: "Change Password")
                    OptionView(title: "Your Pets")
                    OptionView(title: "Your Documents")
                    OptionView(title: "Blocked Users")
                    OptionView(title: "Request History")
                    OptionView(title: "Your Ratings")
                    OptionView(title: "Preferred Currency")
                    OptionView(title: "Privacy Policy")
                    OptionView(title: "Terms of Use")
                }
                
                VStack {
                    ClearButtonView(title: "Delete account",
                                    titleColor: .primaryRed,
                                    backgroundColor: .cyan,
                                    borderColor: .primaryRed) {}
                    
                    PrimaryButtonView(title: "Logout") {}
                }
                .padding(.top, 20)
            }
            .scrollIndicators(.hidden)
            .padding(.vertical, 1)
            .background(Color(uiColor: .init(hexString: "#FCFCFC")))
        }
        .padding(.horizontal, .SCREEN_PADDING)
        .navigationTitle("")
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ProfileView()
}
