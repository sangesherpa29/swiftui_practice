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
                    ChatTopbarView(destinationView: FullProfileView())
                    
                    // Button Stack
                    HStack {
                        PrimaryButtonView(title: "Send Request") {}
                        
                        ClearButtonView(title: "Manage Bookings") {
                            manageBookingOpen.toggle()
                        }
                    }
                    .padding(.bottom)
                    
                    // Animated Profile Stat Container
                    AnimatedProfileStatContainerView()
                    
                    // Current Minding Request
                    ZStack {
                        VStack {
                            HStack {
                                Text("Requested for")
                                    .font(.custom("Poppins-Regular", size: 12))
                                    .foregroundColor(.black.opacity(0.6))
                                
                                Spacer()
                                
                                NavigationLink(destination: FullProfileView()) {
                                    HStack(spacing: 5) {
                                        Text("All Requests")
                                            .font(.custom("Poppins-Regular", size: 12))
                                        
                                        Image("smaller_arrow_icon_gray")
                                            .resizable()
                                            .frame(width: 8, height: 12)
                                    }
                                    .foregroundColor(.black)
                                }
                            }
                            
                            HStack {
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Date")
                                        .font(.custom("Poppins-Regular", size: 12))
                                        .foregroundColor(.black.opacity(0.6))
                                    
                                    Text("Jan 08, 2024")
                                        .font(.custom("Poppins-SemiBold", size: 13))
                                        .foregroundColor(.black)
                                }
                                .padding(.trailing, 65)
                                .padding(.trailing, 65)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Total hours")
                                        .font(.custom("Poppins-Regular", size: 12))
                                        .foregroundColor(.black.opacity(0.6))
                                    
                                    Text("10")
                                        .font(.custom("Poppins-SemiBold", size: 13))
                                        .foregroundColor(.black)
                                }
                                
                                Spacer()
                            }
                            .padding(.vertical, 10)
                            
                            
                            // Button Stack
                            HStack {
                                PrimaryButtonView(title: "Accept Request") {}
                                ClearButtonView(title: "Cancel Request",
                                                titleColor: .red,
                                                borderColor: .red){}
                            }
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .init(hexString: "#F0F6F4")))
                }
                
                Spacer()
            }
            .padding(.horizontal, .SCREEN_PADDING)
            .sheet(isPresented: $manageBookingOpen, content: {
                BottomSheetView(isShowing: $manageBookingOpen)
                    .presentationDetents([.fraction(0.65)])
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
        NavigationStack {
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
}


#Preview {
    ChatTopbarView(destinationView: FullProfileView())
}
