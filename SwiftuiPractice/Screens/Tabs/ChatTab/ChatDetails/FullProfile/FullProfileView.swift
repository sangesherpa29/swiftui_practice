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
            ZStack {
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
                        InfoTextWithImageView(width: 200,
                                 height: 35,
                                 image: "distance_icon",
                                 text: "< 50 km away from you")
                        
                        // Outline container
                        OutlinedContainer(height: 110) {
                            IntermediateBoldText(text: "Short Bio")
                            Text("Test")
                                .font(.custom("Poppins-Light", size: 14))
                        }
                        

                        // Pet Container
                        OutlinedContainer {
                            IntermediateBoldText(text: "Pets")
                            
                            PetContainer(image: "person1",
                                         name: "Kitkat  |  3 years old  |  Labrador",
                                         immnuizationStatus: "immunized",
                                         description: "A very small dog")
                            .padding(.bottom, 5)
                            
                            PetContainer(image: "person2",
                                         name: "Kitkat  |  3 years old  |  Labrador",
                                         immnuizationStatus: "immunized",
                                         description: "A very small dog")
                        }
                        
                        OutlinedContainer {
                            VStack(alignment: .leading) {
                                IntermediateBoldText(text: "Breeds")
                                InfoTextView(width: 80, text: "Test Breed")
                            }
                            
                            VStack(alignment: .leading) {
                                IntermediateBoldText(text: "Pet Personality Preference")
                                InfoTextView(width: 80, text: "Anxious")
                            }
                            .padding(.top, 15)
                            
                        }
                    }
                    .padding(.top, 10)
                    .frame(width: UIScreen.main.bounds.width-40)
                }
                .padding(.top, 1)
                .scrollIndicators(.hidden)
                
            }
            .background(Color(uiColor: .init(hexString: "#FCFCFC")))
            
            
            // Bottom Button Stack
            VStack {
                ClearButtonView(title: "Send Message") {}
                PrimaryButtonView(title: "Send Minding Request") {}
            }
            .padding(.SCREEN_PADDING)
            .background(Color(uiColor: .init(hexString: "#FCFCFC")))
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    FullProfileView()
}


struct SingleStatView: View {
    var dimension: CGFloat = 50
    var image: String
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: dimension, height: dimension)
            
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
    var height: CGFloat
    var spacing: CGFloat
    var alignment: HorizontalAlignment
    
    init(height: CGFloat = 100,
         spacing: CGFloat = 12,
         alignment: HorizontalAlignment = .leading,
         @ViewBuilder content: @escaping () -> V) 
    {
        self.height = height
        self.spacing = spacing
        self.alignment = alignment
        self.content = content
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.black.opacity(0.2))
            
            RoundedRectangle(cornerRadius: 3)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(0.2)
                .foregroundColor(.white)
            
            VStack(alignment: alignment, spacing: spacing, content: content)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(20)
        }
        .padding(.bottom, 20)
    }
}


struct PetContainer: View {
    var image: String
    var name: String
    var immnuizationStatus: String
    var description: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 4)
                .stroke(.black.opacity(0.4), lineWidth: 0.2)
                .foregroundColor(.yellow)
            
            VStack(alignment: .leading) {
                HStack(spacing: 15) {
                    CircularImageComponent(image: image, withWidth: 60, withHeight: 60)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        VerySmallBoldText(text: name).padding(.bottom, 8)
                        VerySmallBoldText(text: immnuizationStatus)
                        Text(description)
                            .font(.custom("Poppins-Regular", size: 12))
                    }
                }
                .padding(.vertical, 15)
            }
            .padding(.horizontal, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}


