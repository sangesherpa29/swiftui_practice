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
                }
                .navigationBarBackButtonHidden()
                
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
