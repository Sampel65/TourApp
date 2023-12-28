//
//  signUpViewModel.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import Foundation

class SignUpViewModel : ObservableObject {
    
    @Published  var email = ""
    @Published  var password = ""
    @Published  var fullName = ""
    @Published  var username = ""
    
    
    @MainActor
    func CreateUser() async throws { try await
        AuthServices.shared.createUser(
            withEmail: email,
            password: password,
            fullName: fullName,
            username: username)
    }
    
}
