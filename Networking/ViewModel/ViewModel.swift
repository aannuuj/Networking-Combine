//
//  ViewModel.swift
//  Networking
//
//  Created by Hariom Palkar on 26/10/20.
//

import Foundation
import Combine

class MovieViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    var cancellationToken: AnyCancellable?
    init() {
        getMovies()
    }
}

extension MovieViewModel {
    // Subscriber implementation
    func getMovies() {
        cancellationToken = Endpoint.request(.trendingMoviesWeekly)
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: {
                    self.movies = $0.movies
            })
    }
}


