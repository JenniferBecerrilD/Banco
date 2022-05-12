//
//  BoxStyle.swift
//  Banco
//
//
//

import Foundation
import SwiftUI

struct boxTextFieldStyles: ViewModifier{
    @Environment (\.colorScheme) var colorScheme
    func body (content: Content)->some View{
        content
            .padding()
            .background(Color(colorScheme == .light ? .white : .black))
            //.background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal)
            .shadow(color: .gray, radius: 2, x: 2, y: 4)
            //.foregroundColor(Color(colorScheme == .light ? .black : .white))
    }
}

struct textFieldStyles: ViewModifier{
    @Environment (\.colorScheme) var colorScheme
    func body (content: Content)->some View{
        content
            .padding()
            //.background(Color(colorScheme == .light ? .gray : .black))
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
            .padding(.horizontal)
            //.foregroundColor(Color(colorScheme == .light ? .black : .white))
    }
}

struct textFieldTextStyles: ViewModifier{
    @Environment (\.colorScheme) var colorScheme
    func body (content: Content)->some View{
        content
            
            .foregroundColor(Color(colorScheme == .light ? .black : .white))
            
    }
}

struct textFieldImageStyles: ViewModifier{
    @Environment (\.colorScheme) var colorScheme
    func body (content: Content)->some View{
        content
            .font(.title2)
            .foregroundColor(Color(colorScheme == .light ? .black : .white))
            //.foregroundColor(.black)
            .frame(width: 35)
    }
}
