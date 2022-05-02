//
//  AddTransferBodyRequest.swift
//  Banco
//
//  Created by Jennifer Becerril on 24/04/22.
//

import Foundation
struct TransferBodyRequest: Encodable {
    var amount: String
    var concept: String
    var destinationAccount: String
    var deviceTokenCookie: String
    var sourceAccount: String
    var sdkData:String

}
