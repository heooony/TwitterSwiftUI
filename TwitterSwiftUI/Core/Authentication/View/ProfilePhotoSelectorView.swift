//
//  ProfilePhotoSelectorView.swift
//  TwitterSwiftUI
//
//  Created by 김동헌 on 2022/06/27.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Setup account",
                           title2: "Add a profile photo")
            Button {
                showImagePicker.toggle()
            } label: {
                Image("plus_photo")
                    .resizable()
                // renderingMode(.original) : 항상 이미지 본래의 색 유지
                // renderingMode(.template) : 이미지의 불투명 영역이 가진 본래의 색 무시하고, 원하는 색으로 변경하여 템플릿 이미지로 활용
                    .renderingMode(.original)
                // 종횡비를 유지하며 크기를 조정하고, 상위 항목을 채우는 역할
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(selectedimage: $selectedImage)
            }

            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
