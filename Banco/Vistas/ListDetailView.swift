//
//  ListDetailView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI


struct ListDetailView: View {
    
    var cuentas: Cuenta
    
    var body: some View {
        VStack{
            cuentas.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
            Text(cuentas.nombre).font(.title)
            Text(cuentas.numero).font(.title3)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(cuentas: Cuenta(id: 1, nombre: "Prueba 1", numero: "Cuenta: 5578475574", avatar: Image(systemName: "person.fill")))
    }
}
