//
//  ContentView.swift
//  M6_L6_Task1
//
//  Created by Bekhruz Hakmirzaev on 03/12/22.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    
    func apiEmployeeList(){
        AFHTTp.get(url: AFHTTp.API_EMPLOYEE_LIST, params: AFHTTp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeSingle(id: Int){
        AFHTTp.get(url: AFHTTp.API_EMPLOYEE_SINGLE + String(id), params: AFHTTp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeCreate(data: Employee){
        AFHTTp.post(url: AFHTTp.API_EMPLOYEE_CREATE, params: AFHTTp.paramsEmployeeCreate(data: data), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeUpdate(data: Employee){
        AFHTTp.put(url: AFHTTp.API_EMPLOYEE_UPDATE + String(data.id!), params: AFHTTp.paramsEmployeeUpdate(data: data), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeDelete(data: Employee) {
        AFHTTp.del(url: AFHTTp.API_EMPLOYEE_DELETE + String(data.id!), params: AFHTTp.paramsEmpty(), handler: { response in
            switch response.result {
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    var body: some View {
        NavigationView{
            Text("Networking")
                .navigationBarTitle("Employee")
        }.onAppear{
//            apiEmployeeList()
//            apiEmployeeSingle(id: 1)
            let employee = Employee(employee_name: "Bekhruz", employee_salary: 2000, employee_age: 20, profile_image: "")
//            apiEmployeeCreate(data: employee)
//            apiEmployeeUpdate(data: employee)
            apiEmployeeDelete(data: employee)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
