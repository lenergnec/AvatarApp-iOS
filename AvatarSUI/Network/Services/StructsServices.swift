//
//  StructsServices.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 19/4/23.
//

import Foundation

struct LoginRequestBody: Codable{
    let emailBody: String
    let passwordBody: String
}

struct LoginResponse: Codable{
    let token: String?
    let message: String?
    let succes: Bool? 
}
