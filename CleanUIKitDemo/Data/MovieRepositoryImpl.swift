//
//  MovieRepositoryImpl.swift
//  CleanUIKitDemo
//
//  Created by Kumari Bhavana on 23/12/25.
//

import Foundation
struct MovieDTO: Decodable {
    let id: Int
    let title: String
    let year: Int
}

final class MovieRepositoryImpl: MovieRepository {
    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func fetchMovies() async throws -> [Movie] {
        let url = URL(string: "https://mocki.io/v1/0c6e8a2b-7f07-4b2d-91d2-fd5c7d98d8cc")!
        let dtos: [MovieDTO] = try await apiClient.request(url: url)
        return dtos.map { Movie(id: $0.id, title: $0.title, year: $0.year) }
    }
}
