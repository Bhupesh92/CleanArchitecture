//
//  FetchMoviesUseCase.swift
//  CleanUIKitDemo
//
//  Created by Kumari Bhavana on 23/12/25.
//

import Foundation
protocol FetchMoviesUseCase {
    func execute() async throws -> [Movie]
}

final class FetchMoviesUseCaseImpl: FetchMoviesUseCase {
    private let repository: MovieRepository

    init(repository: MovieRepository) {
        self.repository = repository
    }

    func execute() async throws -> [Movie] {
        try await repository.fetchMovies()
    }
}
