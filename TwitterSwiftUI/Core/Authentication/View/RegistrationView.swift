//
//  RegistrationView.swift
//  TwitterSwiftUI
//
//  Created by 김동헌 on 2022/06/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get started.", title2: "Create your account")
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $email)
                CustomInputField(imageName: "person",
                                 placeholderText: "Username",
                                 text: $password)
                CustomInputField(imageName: "person",
                                 placeholderText: "Full name",
                                 text: $email)
                CustomInputField(imageName: "lock",
                                 placeholderText: "Password",
                                 text: $password)
            }
            .padding(32)
            
            Button {
                print("Sign un here..")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
                    .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            }
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("SIgn In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
