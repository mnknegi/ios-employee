//
//  EmployeeServiceError.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import Foundation

enum EmployeeServiceError: Error {
    case badRequest
    case badResponse
    case badDecoding
}
