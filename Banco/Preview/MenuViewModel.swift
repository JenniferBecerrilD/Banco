//
//  MenuViewModel.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import Foundation
import CoreVideo
import SwiftUI

enum MenuViewModel: Int, CaseIterable{
    case transferir
    case retiroSinTarjeta
    case cuentas
    case cerrarSesion
    
    
    var title: String{
        switch self{
        case .transferir: return "Transferir"
        case .retiroSinTarjeta: return "Retiro sin tarjeta"
        case .cuentas: return "Cuentas"
        case .cerrarSesion: return "Cerrar sesión"
        }
    }
    
   
    
    
    var imageName: String {
        switch self {
        case .transferir: return "arrow.left.arrow.right"
        case .retiroSinTarjeta: return "creditcard"
        case .cuentas: return "person"
        case .cerrarSesion: return "arrow.left.square"
            
        }
    }
    
    
    var destination: some View {
            switch self {
            case .transferir: return AnyView(TransferView())
            case .retiroSinTarjeta: return AnyView(TransferView())
            case .cuentas: return AnyView(ListPayeeView())
            case .cerrarSesion: return AnyView(LoginView())

            }
        }
}
