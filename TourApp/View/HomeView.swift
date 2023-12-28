//
//  HomeView.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct HomeView: View {
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
                HStack{
                    customSearchBar()
                        .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                }
                
             Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
