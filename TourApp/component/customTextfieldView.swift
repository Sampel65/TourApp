//
//  customTextfieldView.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI

struct customTextfieldView: View {
    
    @Binding var text: String
    var placeholder: String
    var imageName: String
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.gray)
                .padding(.leading, 8)
            
            TextField(placeholder, text: $text)
                .autocapitalization(.none)
                .padding(.vertical, 10)
            
            if !text.isEmpty {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
                    .padding(.trailing, 8)
                    .onTapGesture {
                        text = ""
                    }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.horizontal, 16)
    }
}

struct customSecurefieldView: View {
    
    @Binding var text: String
    var placeholder: String
    var imageName: String
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.gray)
                .padding(.leading, 8)
            
            SecureField(placeholder, text: $text)
                .autocapitalization(.none)
                .padding(.vertical, 10)
            
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.horizontal, 16)
    }
}

