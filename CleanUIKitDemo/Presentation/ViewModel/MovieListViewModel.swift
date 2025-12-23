//
//  MovieListViewModel.swift
//  CleanUIKitDemo
//
//  Created by Kumari Bhavana on 23/12/25.
//

import Foundation

final class MovieListViewModel {
    private let fetchMoviesUseCase: FetchMoviesUseCase

    private(set) var movies: [Movie] = []

    init(fetchMoviesUseCase: FetchMoviesUseCase) {
        self.fetchMoviesUseCase = fetchMoviesUseCase
    }

    func loadMovies() async {
        do {
            movies = try await fetchMoviesUseCase.execute()
        } catch {
            print("Error loading movies:", error)
        }
    }
}
