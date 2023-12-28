//
//  welcomeScreenView.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct welcomeScreenView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack{
                    // sign up button
                    VStack(alignment: .leading) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .padding()
                    }
                    .offset(x: -100)
                    
                    Spacer()
                        

                    
                    // sign up button
                    NavigationLink{
                            SignUpView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Sign Up")
                            .padding()
                            .font(.footnote)
                            .frame(width: 200)
                            .background(Color("Color"))
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    
                    // sign in button
                    NavigationLink{
                            signInView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Sign in")
                            .padding()
                            .font(.footnote)
                            .frame(width: 200)
                            .background(Color.white)
                            .foregroundColor(Color("Color"))
                            .cornerRadius(20)
                    }
                    .padding(.vertical,16)
                    
                    Spacer()
                }
            }
            
        }
    }
}

struct welcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeScreenView()
    }
}
