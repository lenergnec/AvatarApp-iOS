//
//  EnumValues.swift
//  AvatarSUI
//
//  Created by Lener Gonzalez on 18/4/23.
//

import Foundation

enum Gender: String{
    case Female = "F"
    case Male = "M"
}
enum statusEntities: String{
    case Active = "Active"
    case Inactive = "Inactive"
}

enum AuthenticationError: Error{
    case invalidCredentials
    case custom(errorMessage: String)
}
 
