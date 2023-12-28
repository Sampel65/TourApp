//
//  signInViewModel.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import Foundation


class SignInViewModel :ObservableObject {
    
    @Published  var email = ""
    @Published  var password = ""
    
    
    @MainActor
    func login() async throws { try await
        try await AuthServices.shared.login(withEmail: email, password: password)
    }
}
