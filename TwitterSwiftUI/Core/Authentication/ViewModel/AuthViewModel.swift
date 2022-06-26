//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by 김동헌 on 2022/06/25.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session is \(self.userSession)")
    }
}
