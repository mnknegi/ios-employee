//
//  Networking.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import Foundation

protocol NetworkService {

    func fetch(url: URL, completion: @escaping (Result<String, EmployeeServiceError>) -> Void)
}

final class Networking: NetworkService {

    var session: URLSession

    convenience init() {
        self.init(session: URLSession.shared)
    }

    init(session: URLSession) {
        self.session = session
    }

    func fetch(url: URL, completion: @escaping (Result<String, EmployeeServiceError>) -> Void) {

        self.session.dataTask(with: url) { data, response, error in

            if let error = error {
                return completion(.failure(.badRequest))
            }

            guard
                let data = data else {
                return completion(.failure(.badResponse))
            }

            do {
                let decoder = try JSONDecoder().decode(String.self, from: data)
                completion(.success(decoder))
            } catch {
                completion(.failure(.badDecoding))
            }

        }.resume()
    }
}
