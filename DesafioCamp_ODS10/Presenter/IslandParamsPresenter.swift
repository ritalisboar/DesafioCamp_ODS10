//
//  IslandParamsPresenter.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 21/04/22.
//

import Foundation

func getIsland() {
    let baseURL = URL(string: "https://ods10-backend-develop.herokuapp.com/api/islands")!
    
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
//                    httpResponse.allHeaderFields
                } else {
                    print("Invalid Response received from the server")
                    return
                }
//
                let response = try JSONSerialization.jsonObject(with: data, options: [])
//                print("Response:", response)
                
                let object = try JSONDecoder().decode([IslandParams].self, from: data)
//                print(object)
//
                print("name:", object[0].name)
                print("description:", object[0].description)
//                print("price:", object[0].documents)
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
    
}
//getIsland()
