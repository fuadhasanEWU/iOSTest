//
//  Service.swift
//  iOSTask
//
//  Created by Fuad Hasan on 21/5/21.
//

import Foundation


class Service {
    
    static let shared = Service()
    
    
    typealias completion = ((Result<Int, Error>)->())
    typealias response = ((Result<Message,Error>)->())
    
    
    func fetchUser(urlString:String,completionHandler:@escaping completion) {
        
        guard let url = URL(string: urlString) else {
            
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            
        }.resume()
        
    }
    

    
    
    func postRequest(urlString:String,dictToPost:[String:Any],responseHandler:@escaping response) {
        
        guard let url = URL(string: urlString) else {return}
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: dictToPost, options: []) else {fatalError()}
        
        urlRequest.httpBody = httpBody
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            if let error = error {
                print(error)
                responseHandler(.failure(error))
            }
            
            if let jsonData = data {
                if let res = response as? HTTPURLResponse {
                    print(res.statusCode)
                }
                do {
                    let json = try JSONSerialization.jsonObject(with: jsonData, options: [])
                    
                    print(json)
                    
                } catch let error {
                    responseHandler(.failure(error))
                }
            }
        }.resume()
        
    }
}
