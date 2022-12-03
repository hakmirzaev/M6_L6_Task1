//
//  Employee.swift
//  M6_L6_Task1
//
//  Created by Bekhruz Hakmirzaev on 03/12/22.
//

import Foundation

struct Employee: Decodable {
    var id: Int?
    var employee_name: String?
    var employee_salary: Int?
    var employee_age: Int?
    var profile_image: String?
    
    init() {
        
    }
    
    init(employee_name: String, employee_salary: Int, employee_age: Int, profile_image: String){
        self.id = 1
        self.employee_age = employee_age
        self.employee_name = employee_name
        self.employee_salary = employee_salary
        self.profile_image = profile_image
    }
}
