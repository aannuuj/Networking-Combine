//
//  ContentView.swift
//  Networking
//
//  Created by Hariom Palkar on 26/10/20.
//

import SwiftUI

struct MoviesView: View {
    @ObservedObject var viewModel = MovieViewModel()
    // change the model name acc to requirenments
    
    var body: some View {
        List(viewModel.movies) { movie in
            HStack {
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    Text(movie.originalTitle) 
                        .font(.subheadline)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
