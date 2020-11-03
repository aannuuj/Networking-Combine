//
//  Response.swift
//  Networking
//
//  Created by Hariom Palkar on 31/10/20.
//

import Foundation


struct Response: Codable {
    let movies: [Movie]
    let users: [User]
    let user : User

    enum CodingKeys: String, CodingKey {
        case movies = "results"
        case users = "users"
        case user = "user"
    }
}

