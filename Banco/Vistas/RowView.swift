//
//  RowView.swift
//  Banco
//
//  Created by Jennifer Becerril on 26/10/21.
//

import SwiftUI

struct RowView: View {
    
    var cuentas: Cuenta
    
    var body: some View {
        HStack{
            cuentas.avatar.resizable().frame(width: 40, height: 40).padding(10)
            
            VStack(alignment:.leading){
                Text(cuentas.nombre)
                    .font(.title2)
                Text(cuentas.numero)
                    .font(.headline)
            }
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(cuentas: Cuenta(id: 1, nombre: "Prueba 1", numero: "Cuenta: 5578475574", avatar: Image(systemName: "person.fill")))
    }
}
