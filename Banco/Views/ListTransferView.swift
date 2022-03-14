//
//  ListViewTrans.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import SwiftUI

private let transfer = [Transfers(id: 1, name: "Transferencia 1", number: "Cta destino: XXX574", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 2, name: "Transferencia 2", number: "Cta destino: XXX575", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 3, name: "Transferencia 3", number: "Cta destino: XXX576", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 4, name: "Transferencia 4", number: "Cta destino: XXX577", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 5, name: "Transferencia 5", number: "Cta destino: XXX578", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right"))]

struct ListTransferView: View {
    var body: some View {
        
            List(transfer, id: \.id){
                transfers in RowTransferView(transfer:transfers)
                
            }
        
        }
}

struct ListTransferView_Previews: PreviewProvider {
    static var previews: some View {
        ListTransferView()
    }
}

