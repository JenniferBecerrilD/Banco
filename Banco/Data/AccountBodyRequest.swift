//
//  AccountBodyRequest.swift
//  Banco
//
//  Created by Jennifer Becerril on 20/04/22.
//

import Foundation

struct AccountBodyRequest: Encodable{
    var deviceTokenCookie: String
    var accountNumber: String
    var sdkData: String
    var nickname: String
}


