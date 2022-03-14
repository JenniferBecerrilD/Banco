//
//  BoxStyle.swift
//  Banco
//
//
//

import Foundation
import SwiftUI

struct boxTextFieldStyles: ViewModifier{
    func body (content: Content)->some View{
        content
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal)
            .shadow(color: .gray, radius: 2, x: 2, y: 4)
    }
}

struct textFieldStyles: ViewModifier{
    func body (content: Content)->some View{
        content
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
            .padding(.horizontal)
    }
}

struct textFieldImageStyles: ViewModifier{
    func body (content: Content)->some View{
        content
            .font(.title2)
            .foregroundColor(.black)
            .frame(width: 35)
    }
}
