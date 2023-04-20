//
//  Login.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 16/4/23.
//

import Foundation

class LoginModel: ObservableObject  {
    
    var email: String = ""
    var password: String = ""
    
    func login(){
        
        WebServices().login(emailWS: email, passwordWS: password){ result in
            switch result {
            case .success(let token):
                print(token)
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }

}

