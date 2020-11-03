//
//  Model.swift
//  Networking
//
//  Created by Hariom Palkar on 30/10/20.
//

import Foundation

// MARK :- Movie
struct Movie: Codable, Identifiable {
    var id = UUID()
    let movieId: Int
    let originalTitle: String
    let title: String

    enum CodingKeys: String, CodingKey {
        case movieId = "id"
        case originalTitle = "original_title"
        case title
    }
}

// MARK :- User
struct User: Codable, Identifiable {
    var id = UUID()
    var uid: String
    var name: String
    var profilePicture: String

    enum CodingKeys: String, CodingKey {
        case uid = "id"
        case name = "user_name"
        case profilePicture = "profile_pic"
    }
}


