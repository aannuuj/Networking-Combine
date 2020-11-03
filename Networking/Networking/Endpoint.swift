//
//  Endpoint.swift
//  Networking
//
//  Created by Hariom Palkar on 26/10/20.
//

import Foundation
import Combine

// 1
enum Endpoint {
    static let apiClient = APIClient()
    static let baseUrl = URL(string: "\(ServerEnvironment.active.baseURL)")!
}
// change this acc to cases and return path
enum APIPath: String {
    case trendingMoviesWeekly = "trending/movie/week"
    case user = "/user"
    case profile = "/profile"
}
var apiKey = "cc9754d5883c3677c78fa55c132bca76"
var uid = ""

extension Endpoint {
    static func request(_ path: APIPath) -> AnyPublisher<Response, Error> {
        guard var components = URLComponents(url: baseUrl.appendingPathComponent(path.rawValue), resolvingAgainstBaseURL: true)
            else { fatalError("Couldn't create URLComponents") }
        components.queryItems = [URLQueryItem(name: "uid", value: uid)]
        let request = URLRequest(url: components.url!)
        return apiClient.run(request)
            .map(\.value)
            .eraseToAnyPublisher() 
    }
    
    
    
}


