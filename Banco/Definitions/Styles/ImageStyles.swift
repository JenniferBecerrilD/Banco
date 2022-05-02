//
//  ImageStyles.swift
//  Banco
//
//  Created by Jennifer Becerril on 30/03/22.
//

import Foundation
import SwiftUI

struct iconStyle: ViewModifier{
    func body (content: Content)->some View{
        content
            .frame(width: 40, height: 40)
            .padding(10)
    }
}
