//
//  SignUpView.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var searchText: String = ""
    @StateObject var viewModel = SignUpViewModel()
    @State var Animate = false
    
    var body: some View {
        ZStack {
            
            CircleBackground(color: Color("Color"))
                .blur(radius: Animate ? 30 : 100)
                .offset(x: Animate ? -50 : -130, y : Animate ? -30  :  -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        Animate.toggle()
                    }
                }
            
            CircleBackground(color: Color.white)
                .blur(radius: Animate ? 30 : 100)
                .offset(x: Animate ? 100 :  130, y : Animate ? 150 : 100)
            
            VStack{
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack{
                    
                    customTextfieldView(text: $viewModel.fullName, placeholder: "fullname", imageName: "person")
                        .padding(.vertical,10)
                    
                    customTextfieldView(text: $viewModel.email, placeholder: "email", imageName: "magnifyingglass")
                        .padding(.vertical,10)
                    
                    
                    customTextfieldView(text: $viewModel.username, placeholder: "username", imageName: "magnifyingglass")
                        .padding(.vertical,10)
                    
                    
                    customSecurefieldView(text: $viewModel.password, placeholder: "password", imageName: "lock")
                        .padding(.vertical,10)
                }
                
                
                Button{
                    Task { try await viewModel.CreateUser() }
                        
                    
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44, alignment: .center)
                        .background(Color("Color"))
                        .cornerRadius(8)
                }
                
                Spacer()
            
            Divider()
                
                
                NavigationLink{
                        signInView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an acount? ")
                        
                        Text("Login")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Color"))
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
