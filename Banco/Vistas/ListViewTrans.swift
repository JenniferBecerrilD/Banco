//
//  ListViewTrans.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import SwiftUI

private let transferencias = [Transferencia(id: 1, nombre: "Transferencia 1", numero: "Cta destino: XXX574", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 2, nombre: "Transferencia 2", numero: "Cta destino: XXX575", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 3, nombre: "Transferencia 3", numero: "Cta destino: XXX576", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 4, nombre: "Transferencia 4", numero: "Cta destino: XXX577", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 5, nombre: "Transferencia 5", numero: "Cta destino: XXX578", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right"))]

struct ListViewTrans: View {
    var body: some View {
            List(transferencias, id: \.id){
                transferencia in RowViewTrans(transferencias:transferencia)
                
            }
        
        }
}

struct ListViewTrans_Previews: PreviewProvider {
    static var previews: some View {
        ListViewTrans()
    }
}

