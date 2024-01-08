//
//  ChatDetailsView.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import SwiftUI

struct ChatDetailsView: View {
    @Environment(\.dismiss) private var dismiss
    @State var text: String = ""
    
    @State var manageBookingOpen = false
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    // Conversation title
                    ChatTopbarView(destinationView: ProfileView())
                    
                    // Button Stack
                    HStack {
                        PrimaryButtonView(title: "Send Request") {}
                        
                        ClearButtonView(title: "Manage Bookings") {
                            manageBookingOpen.toggle()
                        }
                    }
                    
                    // Animated Profile Stat Container
                    AnimatedProfileStatContainer()
                }
                
                Spacer()
            }
            .padding(.horizontal, .SCREEN_PADDING)
            .sheet(isPresented: $manageBookingOpen, content: {
                BottomSheetView()
                    .presentationDetents([.fraction(0.5)])
            })
            
            
            // Bottom Messagebox View
            ZStack {
                HStack(alignment: .center, spacing: 15) {
                    CameraButtonView()
                    
                    ZStack {
                        TextField(text: $text) {
                            Text("Type Message")
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        }
                        .font(.custom("Poppins-Regular", size: 14))
                        .padding(.horizontal, 15)
                    }
                    .frame(height: 40)
                    .background(Color(uiColor: .init(hexString: "#F2F2F2")))
                    
                    SendMessageButtonView().offset(CGSize(width: -5.0, height: 0.0))
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 60)
                .padding(.horizontal, .SCREEN_PADDING)
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    ChatDetailsView()
}


// Conversation title
struct ChatTopbarView<V: View>: View {
    private var destinationView: V
    
    init(destinationView: V) {
        self.destinationView = destinationView
    }
    
    var body: some View {
        HStack(alignment: .center) {
            BackButtonView().offset(CGSize(width: -10.0, height: 0.0))
            
            NavigationLink(destination: destinationView) {
                HStack {
                    CircularImageComponent(image: "person4", withWidth: 40, withHeight: 40)
                    
                    Text("Ameer Sa")
                        .font(.custom("Poppins-Medium", size: 16))
                        .foregroundColor(.black)
                    
                    Image("verified_icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 10, height: 10)
                        .clipShape(Circle())
                }
            }
            .offset(CGSize(width: -10.0, height: 0.0))
            
            Spacer()
            
            Image("phone_icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .clipShape(Circle())
        }
        .frame(width: UIScreen.main.bounds.width-40)
        .toolbar(.hidden, for: .tabBar)
    }
}


struct AnimatedProfileStatContainer: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // Stats Container Stack
                HStack(alignment: .center) {
                    SingleStatView(dimension: 40, image: "charge_icon", title: "Charges", value: "18.0")
                    SingleStatView(dimension: 40, image: "experience_icon", title: "Experience", value: "1.0 years")
                        .offset(CGSize(width: 4.0, height: 0.0))
                        .padding(.horizontal, 50)
                    SingleStatView(dimension: 40, image: "rating_icon", title: "Rating", value: "4.2 stars")
                }
                .offset(CGSize(width: 4.0, height: 0.0))
                .padding(.vertical, 20)
                .frame(width: UIScreen.main.bounds.width - 40)
                
                InfoTextWithImageView(width: 200,
                                      image: "distance_icon",
                                      text: "< 50 km away from you",
                                      backgroundColor: .clear)
                
                
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
                        
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.primaryColor, lineWidth: 1)
                                .frame(width: 30, height: 23)
                            
                            Image("smaller_arrow_icon_gray")
                                .resizable()
                                .frame(width: 8, height: 13)
                                .rotationEffect(.degrees(-90))
                                .background(.clear)
                        }
                        .background(.white)
                    })
                }
                .padding(.horizontal, .SCREEN_PADDING)
                .padding(.bottom)
                
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color(uiColor: .init(hexString: "#F0F6F4")))
    }
}
