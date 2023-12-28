//
//  ContentView.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = contenViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                welcomeScreenView()
            } else {
                signInView()
            }
        }    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
