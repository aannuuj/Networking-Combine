//
//  Environment.swift
//  Networking
//
//  Created by Hariom Palkar on 26/10/20.
//

import Foundation
import SwiftUI

public enum ServerEnvironment: String, Codable, Hashable {
    public static var active: Self {
        .local
    }
    case temporary
    case debug
    case staging
    case production
    case local
}

extension ServerEnvironment {
    public var baseURL: String {
        switch self {
        case .temporary:
            return String("")
        case .debug:
            return String("https://api.themoviedb.org/3/")
        case .staging:
            return String("https://")
        case .production:
            return String("https://")
        case .local:
            return String("https://5519addf453f.ngrok.io")
        }
    }
}
