//
//  UserIslandParamsPresenter.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 21/04/22.
//

import Foundation

func getUserIslands(userId: String) {
    let baseURL = URL(string: "https://ods10-backend-develop.herokuapp.com/api/users/\(userId)/islands")!
    
    var urlRequest = URLRequest(url: baseURL)
    
    urlRequest.allHTTPHeaderFields = ["content-type": "application/json"]
    urlRequest.httpMethod = "GET"
    
    URLSession.shared.dataTask(with: urlRequest) {data, response, error in
        if let error = error {
            print(error.localizedDescription)
        } else if let data = data {
            
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    (200...299).contains(httpResponse.statusCode)
                    print("StatusCode:", httpResponse.statusCode)

                } else {
                    print("Invalid Response received from the server")
                    return
                }
                
                let response = try JSONSerialization.jsonObject(with: data, options: [])
//                print("Response:", response)
                
                let object = try JSONDecoder().decode([UserIslandsParams].self, from: data)
//                print(object)
                
//                print("id:", object[0].id)
//                print("name:", object[0].name)
//                print("description::", object[0].description)
                
                
            } catch {
                print(error)
            }
        }
    }.resume()
    
}
//getUserIslands(userId: "99fed5de-575b-40ec-aee8-01258aa596be")
