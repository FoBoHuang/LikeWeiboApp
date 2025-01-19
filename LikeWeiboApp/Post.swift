//
//  Post.swift
//  LikeWeiboApp
//
//  Created by 黄佛波 on 2025/1/19.
//

import SwiftUI

struct PostList: Codable {
    var list: [Post]
}

struct Post: Codable {
    let avatar: String
    let vip: Bool
    let name: String
    let date: String
    
    var isFollowed: Bool
    
    let text: String
    let images: [String]
    
    var commentCount: Int
    var likeCount: Int
    var isLiked: Bool
}

let postList = loadPostListData(fileName: "PostListData_recommend_1.json")

func loadPostListData( fileName: String) -> PostList {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Can not find \(fileName) in main Bundle")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Can not load \(url)")
    }
    guard let list = try? JSONDecoder().decode(PostList.self, from: data) else {
        fatalError("Can not parse post list json data")
    }
    return list
}
