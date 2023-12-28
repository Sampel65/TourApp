//
//  signInView.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct signInView: View {
    @StateObject var viewModel = SignInViewModel()
    @State var Animate = false
    var body: some View {
        NavigationStack{
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
                        customTextfieldView(text: $viewModel.email, placeholder: "email", imageName: "person")
                            .padding(.vertical,10)
                        
                        customSecurefieldView(text: $viewModel.password, placeholder: "password", imageName: "lock")
                            .padding(.vertical,10)
                    }
                    
                    NavigationLink{
                        Text("Forget password?")
                    } label: {
                        Text("Forget password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .padding(.trailing, 28)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    Button{
                        Task { try await viewModel.login()}
                            
                        
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 352, height: 44, alignment: .center)
                            .background(Color("Color"))
                            .cornerRadius(8)
                    }
                    
                    Text("or sign in with")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                    HStack(spacing : 20){
                        
                        Image("fb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Image("gmail")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                    
                    Spacer()
                    
                    
                
                Divider()
                    
                    
                    NavigationLink{
                        SignUpView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3) {
                            Text("Dont have an acount? ")
                            
                            Text("Signup")
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
}

struct signInView_Previews: PreviewProvider {
    static var previews: some View {
        signInView()
    }
}
