//
//  AuthServices.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestoreSwift


class AuthServices {
    @Published var userSession : FirebaseAuth.User?
    
    static let shared = AuthServices()
    init() {
        self.userSession = Auth.auth().currentUser
        
    }
    
    @MainActor
    func login(withEmail email : String, password : String) async throws {
        do {
            let result = try await  Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
          
        } catch {
            print("DEBUG: failed to create user with error\(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email : String, password : String, fullName : String, username : String) async throws {
        
        do {
            let result = try await  Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            
        } catch {
            print("DEBUG: failed to create user with error\(error.localizedDescription)")
        }
        
    }
    
    func SignOut() {

    }
    


}
