//
//  TweetFilterViewModel.swift
//  TwitterSwiftUI
//
//  Created by 김동헌 on 2022/06/25.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Twwets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
