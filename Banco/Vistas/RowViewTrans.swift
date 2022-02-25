//
//  RowViewTrans.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import SwiftUI

struct RowViewTrans: View {

    
    var transferencias: Transferencia

    var body: some View {
        HStack{
            transferencias.avatar.resizable().frame(width: 40, height: 40).padding(10)
            
            VStack(alignment:.leading){
                Text(transferencias.nombre)
                    .font(.title2)
                Text(transferencias.numero).font(.headline)
                Text(transferencias.cantidad)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
    }

    struct RowViewTrans_Previews: PreviewProvider {
    static var previews: some View {
        RowViewTrans(transferencias: Transferencia(id: 1, nombre: "Transferencia 1", numero: "Cta destino: XXX574", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")))
    }
}
