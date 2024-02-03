//
//  EmployeeListViewModel.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import Foundation

protocol EmployeeViewModelDelegate: AnyObject {

    func employeeViewModel(_ viewModel: EmployeeListViewModel, didReceiveAllEmployeeList employees: String)
}

final class EmployeeListViewModel {

    let repository: EmployeeListWebRepository

    weak var delegate: EmployeeViewModelDelegate?

    init(repository: EmployeeListWebRepository) {
        self.repository = repository
    }

    func fetchAllEmployeeList() {
        repository.getAllEmployees { result in
            switch result {
            case .success(let response):
                self.delegate?.employeeViewModel(self, didReceiveAllEmployeeList: response)
            case .failure(let failure):
                print("Error: Failure during getting all employee list.")
            }
        }
    }

}
