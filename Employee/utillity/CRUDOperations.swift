//
//  CRUDOperations.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import Foundation

protocol CRUDOperations {

    func getAllEmployees(completion: @escaping (Result<String, EmployeeServiceError>) -> Void)
    func getEmployee(_ id: String, completion: @escaping (Result<String, EmployeeServiceError>) -> Void)
    func createEmployees()
    func updateEmployees(_ id: String)
    func deleteEmployees(_ id: String)
}
