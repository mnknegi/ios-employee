//
//  EmployeeListViewController.swift
//  Employee
//
//  Created by Mayank Negi on 02/02/24.
//

import UIKit

class EmployeeListViewController: UIViewController {

    @IBOutlet weak var employeeList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let session = URLSession(configuration: URLSessionConfiguration.default)
        let service = Networking(session: session)
        let repository = EmployeeListWebRepository(service: service)
        let viewModel = EmployeeListViewModel(repository: repository)

    }

}

