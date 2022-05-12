//
//  Transferencias.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import Foundation
import SwiftUI


struct Transfers: Decodable, Identifiable{
//struct Transfers{
    var id: Int
    var concept: String
    //var sourceAccount: String
    var destinationAccount: String
    var amount: Int
}
