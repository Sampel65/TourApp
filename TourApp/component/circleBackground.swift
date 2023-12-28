//
//  circleBackground.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct CircleBackground: View {
    @State var color: Color = Color("Color")
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
    }
}

struct CircleBackground_Previews: PreviewProvider {
    static var previews: some View {
        CircleBackground()
    }
}
