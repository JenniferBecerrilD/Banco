//
//  LoginBodyRequest.swift
//  Banco
//
//  Created by Jennifer Becerril on 14/03/22.
//

import Foundation

struct LoginBodyRequest: Encodable{
    var deviceTokenCookie: String
    var password: String
    var sdkData: String
    var username: String
}


