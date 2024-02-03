//
//  EmployeeListRepository.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import Foundation

struct EmployeeListWebRepository: CRUDOperations {

    let service: NetworkService

    init(service: NetworkService) {
        self.service = service
    }

    func getAllEmployees(completion: @escaping (Result<String, EmployeeServiceError>) -> Void) {
        let url = URLComponentsConfiguration(scheme: "https", host: "dummy.restapiexample.com", path: "/api/v1/employees")
        service.fetch(url: url.url!) { result in
            switch result {
            case .success(let response):
                completion(.success(response))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }

    func getEmployee(_ id: String, completion: @escaping (Result<String, EmployeeServiceError>) -> Void) {
        //
    }

    func createEmployees() {
        //
    }

    func updateEmployees(_ id: String) {
        //
    }

    func deleteEmployees(_ id: String) {
        //
    }
}
