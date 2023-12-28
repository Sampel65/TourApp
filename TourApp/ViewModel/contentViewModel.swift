//
//  contentViewModel.swift
//  TourApp
//
//  Created by Sampel on 28/12/2023.
//

import Foundation
import Combine
import Firebase

class contenViewModel : ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var canceliables = Set<AnyCancellable>()
    
    
    init() {
        setUpSubscribers()
    }
    private func setUpSubscribers() {
        AuthServices.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &canceliables)
    }
}
