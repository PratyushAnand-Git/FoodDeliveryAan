//
//  SignUpView.swift
//  FoodDelivery
//
//  Created by student on 23/01/25.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var txtUsername: String = ""
    @State private var txtemail: String = ""
    @State private var txtpassword: String = ""
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
                ScrollView{
                    VStack{
                        
                        Image("color_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(.top, 100)
                        
                        Spacer()
                        
                            .padding(.bottom, 65)
                        Text("Sign Up")
                            .font(.customfont(.semibold, fontSize:26))
                            .foregroundColor(.primaryText)
                            .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 5)
                        
                        Text("Enter your credentials to continue")
                            .foregroundColor(.black.opacity(0.7))
                        //.padding(.bottom, 450)
                        //.ignoresSafeArea()
                            .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                        //Spacer()
                        
                        LineTextField(title: "Username", placholder: "Enter your username", txt:$txtUsername )
                            .padding(.bottom, 30)
                        
                        LineTextField(title: "Email", placholder: "Enter your email address", txt: $txtemail, keyboardType: .emailAddress)
                            .padding(.bottom, .screenWidth * 0.02)
                        
                        LineSecureField(title: "Password", placholder: "Enter your password", txt: .constant(""), isShowPassword: .constant(false))
                            .padding(.bottom, .screenWidth * 0.02)
                        
                        HStack{
                            Text("By continuing you agree to our")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.black.opacity(0.9))
                                .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                                .lineLimit(1)
                                
                            
                            Button{
                                
                            }label: {
                                Text("Terms of Service")
                                    .font(.customfont(.medium, fontSize: 14))
                                    .foregroundColor(.green.opacity(0.9))
                                    .multilineTextAlignment(.center)
                                    //.padding(.top, )
                            }
                        }
                        .multilineTextAlignment(.center)
                        
                        HStack{
                            Text("and")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.black.opacity(0.9))
                                .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                                .lineLimit(1)
                            
                            Button{
                                
                            }label: {
                                Text("Privacy Policy")
                                    .font(.customfont(.medium, fontSize: 14))
                                    .foregroundColor(.green.opacity(0.9))
                                    //.multilineTextAlignment(.center)
                                    //.padding(.top, )
                            }
                        }
                        
                        Spacer()
                        Button{
                            
                        }label:{
                            Text("Sign Up")
                                .font(.customfont(.medium, fontSize: 20))
                                .padding()
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, maxHeight:70)
                                .foregroundColor(.white.opacity(0.9))
                                .background(Capsule().fill(.green))
                        }
                            
                                
                        }
                    }
                    .padding(.horizontal)
                    
                }
                        
                    //VStack
                    
                        
                    
                        
                    
                }
            }
        


#Preview {
    SignUpView()
}
