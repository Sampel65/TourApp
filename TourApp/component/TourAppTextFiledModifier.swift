//
//  TourAppTextFiledModifier.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import Foundation
import SwiftUI


struct TourAppTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
