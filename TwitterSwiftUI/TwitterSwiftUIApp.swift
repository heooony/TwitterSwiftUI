//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by 김동헌 on 2022/06/25.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}
