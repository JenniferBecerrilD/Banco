//
//  Payee.swift
//  Banco
//
//  Created by Jennifer Becerril on 14/03/22.
//

import Foundation
struct PayeeBodyResponse: Decodable, Identifiable{
    var id: Int
    var nickname: String
    var accountNumber: String
    var userId: String
}
