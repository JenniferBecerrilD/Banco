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
            .background(Color.mainOrangeColor)
            .clipShape(Capsule())
            .padding(.horizontal)
            .cornerRadius(8)
    }
}

struct mainButtonStyle: ViewModifier{
    @Environment (\.colorScheme) var colorScheme
    func body (content: Content)->some View{
        content
            //.foregroundColor(.black)
            .foregroundColor(Color(colorScheme == .light ? .black : .white))
            .padding(.all, 36)
            //.background(Color.white)
            //.background(Color(colorScheme == .light ? .white: .gray).opacity(0.1))
            .background(colorScheme == .light ? Color.white : Color.gray.opacity(0.1))
            .cornerRadius(12)
            .shadow(color: .gray, radius: 4, x: 2, y: 2)
    }
}


