//
//  URLBuilder.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import Foundation

protocol URLComponentsConfiguring {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var queryItems: [String: String]? { get }
}

final class URLComponentsConfiguration: URLComponentsConfiguring {
    var scheme: String
    var host: String
    var path: String
    var queryItems: [String: String]?

    init(scheme: String, host: String, path: String, queryItems: [String: String]? = nil) {
        self.scheme = scheme
        self.host = host
        self.path = path
        self.queryItems = queryItems
    }

    var url: URL? {
        var components = URLComponents()
        components.scheme = self.scheme
        components.host = self.host
        components.path = self.path
        components.queryItems = self.queryParameters
        return components.url
    }

    private var queryParameters: [URLQueryItem]? {
        guard
            let queryItems = queryItems else {
            return nil
        }
        return queryItems.map { URLQueryItem(name: $0.key, value: $0.value) }
    }
}

