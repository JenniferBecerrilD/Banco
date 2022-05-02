//
//  ListViewTrans.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import SwiftUI

private let transfer = [Transfers(id: 1, concept: "Transferencia 1", destinationAccount: "Cta destino: XXX574", amount: 500),
                              Transfers(id: 2, concept: "Transferencia 2", destinationAccount: "Cta destino: XXX575", amount: 500),
                              Transfers(id: 3, concept: "Transferencia 3", destinationAccount: "Cta destino: XXX576", amount: 500),
                              Transfers(id: 4, concept: "Transferencia 4", destinationAccount: "Cta destino: XXX577", amount: 500),
                              Transfers(id: 5, concept: "Transferencia 5", destinationAccount: "Cta destino: XXX578", amount: 500)]

struct ListTransferView: View {
    
    //@ObservedObject var transferViewModel = TransferViewModel()
    var body: some View {
        
        
            List(transfer, id: \.id){
                transfers in RowTransferView(transfer:transfers)
                
            }
        
        /*List(transferViewModel.trans.data,id:\.id){transfers in RowTransferView(transfer:transfers)
        
        }*/
        
        }
}

struct ListTransferView_Previews: PreviewProvider {
    static var previews: some View {
        ListTransferView()
    }
}

