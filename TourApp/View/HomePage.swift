//
//  HomePage.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        .font(.title)
                        
                        
                }
            
            Text("Home")
                .tabItem {
                    Image(systemName: "home")
                }
            
            Text("Home")
                .tabItem {
                    Image(systemName: "home")
                }
            
            Text("Home")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(Color.black)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
