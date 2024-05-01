//
//  Post.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/6/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let caption: String
    let imageUrl: String
    let timeStamp: Date
}

extension Post{
    static var MOCK_POSTS: [Post] = [
        .init(id:NSUUID().uuidString,
              caption:"This is today",
              imageUrl: "latte",
              timeStamp: Date()),
        .init(id:NSUUID().uuidString,
              caption:"This is yesterday",
              imageUrl: "tulip",
              timeStamp: Date())
    ]
}

struct User: Identifiable, Hashable, Codable {
    let id: String
}
