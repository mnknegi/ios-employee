//
//  EmployeeModel.swift
//  Employee
//
//  Created by Mayank Negi on 03/02/24.
//

import Foundation

struct EmployeeListResponse: Decodable {
    let status: String
    let data: [EmployeeData]
}

struct EmployeeData: Decodable {
    let id: String
    let employeeName: String
    let employeeSalary: String
    let employeeAge: String
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
        case id
    }
}
