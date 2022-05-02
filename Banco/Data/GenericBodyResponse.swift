//
//  LoginBodyResponse.swift
//  Banco
//
//  Created by Jennifer Becerril on 14/03/22.
//

import Foundation

struct GenericBodyResponse: Decodable{
    var actionCode: String
    var deviceTokenCookie: String
    var jwt: String?
  }
