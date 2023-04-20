//
//  DataViewModel.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 18/4/23.
//

import Foundation

class WebServices {
    
    func login(emailWS: String, passwordWS: String, completion: @escaping (Result<String, AuthenticationError>) -> Void){
        
        guard let url = URL(string: ConstantsStrings.tokenAuth) else{
            completion(.failure(.custom(errorMessage: "URL no es correcta")))
            return
        }
        
        //Create the body information to pass in the request
        let body = LoginRequestBody(emailBody: emailWS, passwordBody: passwordWS)
        
        //Create the request en send the parameters to the request
        var request = URLRequest(url: url)
        request.httpMethod = ConstantsStrings.postMethod
        request.addValue("aplication/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else{
                completion(.failure(.custom(errorMessage: "No hay data")))
                return
            }
            
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else{
                completion(.failure(.invalidCredentials))
                return
            }
            
            guard let token = loginResponse.token else {
                completion(.failure(.invalidCredentials))
                    return
            }
            
            completion(.success(token))
            
        }.resume()
        
    }
   
}
