//
//  HomeVM.swift
//  Netflix
//
//  Created by adam janusewski on 6/21/22.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]  //  movie : genre
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })  // Loop over each key and turn to string
    }
    
    public func getMovie(forCategory cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Horror"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
        movies["Mystery"] = exampleMovies.shuffled()
        movies["Watch it again"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
    }
}
