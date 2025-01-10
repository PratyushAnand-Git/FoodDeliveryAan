//
//  ContentView.swift
//  FoodDelivery
//
//  Created by student on 07/01/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            ZStack{
            
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack{
                   Spacer()
                    Image("app_logo")
                        .resizable()
                        .frame(width: 60,height: 60)
                        .padding(.bottom,8)
                    
                    Text("Welcome\nto our store")
                        .font(.system(size:48))
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                        //.padding(.bottom, 10)
                    /*Text("to our store")
                        .font(.system(size:50))
                        .foregroundStyle(Color.white)*/
                        
                    Text("Get your groceries in as fast as one hour")
                        .foregroundColor(.white.opacity(0.7))
                        .padding(.bottom, 30)
                        .multilineTextAlignment(.center)
                    
                    Button{
                        
                    }label: {
                        Text("Get Started")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight:70)
                            .background(Capsule().fill(.green))
                            .padding(.horizontal)
                    }
                    .padding(.bottom, 90)
                    
                    
                }
            }
        }
    }}

#Preview {
    LoginView()
}
