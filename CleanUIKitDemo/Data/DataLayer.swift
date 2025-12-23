//
//  DataLayer.swift
//  CleanUIKitDemo
//
//  Created by Kumari Bhavana on 23/12/25.
//

import Foundation
protocol MovieRepository {
    func fetchMovies() async throws -> [Movie]
}

final class APIClient {
    func request<T: Decodable>(url: URL) async throws -> T {
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
