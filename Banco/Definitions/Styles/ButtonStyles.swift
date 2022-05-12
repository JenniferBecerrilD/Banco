//
//  ButtonStyles.swift
//  Banco
//
//  
//

import Foundation
import SwiftUI

struct acceptButtonStyle: ViewModifier{
    func body (content: Content)->some View{
        content
            .background(Color(Constants.mainOrangeColor))
            .clipShape(Capsule())
            .padding(.horizontal)
            .cornerRadius(8)
    }
}

struct mainButtonStyle: ViewModifier{
    func body (content: Content)->some View{
        content
            .foregroundColor(.black)
            .padding(.all, 36)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 4, x: 2, y: 2)
    }
}


