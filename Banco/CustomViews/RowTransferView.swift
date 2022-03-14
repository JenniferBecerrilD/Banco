//
//  RowViewTrans.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import SwiftUI

struct RowTransferView: View {

    
    var transfer: Transfers

    var body: some View {
        
        HStack{
            transfer.avatar.resizable().frame(width: 40, height: 40).padding(10)
            
            VStack(alignment:.leading){
                Text(transfer.name)
                    .font(.title2)
                Text(transfer.number).font(.headline)
                Text(transfer.quantity)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
    }

    struct RowViewTransfer_Previews: PreviewProvider {
    static var previews: some View {
        
        RowTransferView(transfer: Transfers(id: 1, name: "Transferencia 1", number: "Cta destino: XXX574", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")))
    }
}
