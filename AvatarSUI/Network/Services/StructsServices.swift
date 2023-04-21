//
//  StructsServices.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 19/4/23.
//

import Foundation

struct LoginRequestBody: Codable{
    let email: String
    let password: String
}

struct LoginResponse: Codable{
    let access: String?
    let message: String?
    let succes: Bool? 
}
