//
//  Constants.swift
//  Banco
//
//
//

import Foundation
import UIKit
import SwiftUI

struct Constants{
    
    static let urlBase = "http://demo0699159.mockable.io"
    
    static var token = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJsY3J1ekBwZW5zYXJlLm14IiwiZXhwIjoxNjQ5ODcwMDMxfQ.25r6qZa9cTMmhU_nigWweh2A0gzZTFQBuChOCGRUUtY"
    
    /*static var mainOrangeColor: UIColor {
        UIColor { $0.userInterfaceStyle == .dark ? UIColor(red: 193/255, green: 121/255, blue: 0/255, alpha: 1.0) : UIColor(red: 249/255, green: 168/255, blue: 37/255, alpha: 1.0) }
        }*/
    
    
}

extension Color{
    static let background = Color(UIColor.systemBackground)
    static let mainGrayColor = Color("backgroundColor")
    static let mainOrangeColor = Color("orangeColor")
}
