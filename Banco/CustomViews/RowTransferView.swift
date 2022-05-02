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
            
            Image(systemName: "arrow.left.arrow.right").resizable().frame(width: 40, height: 40).padding(10)
            
            
            VStack(alignment:.leading){
                Text(transfer.concept)
                    .font(.title2)
                Text(transfer.destinationAccount).font(.headline)
                //Text(transfer.amount)
                    //.font(.subheadline)
                Text("Cantidad: \(transfer.amount)")
            }
            Spacer()
        }
    }
    }

    struct RowViewTransfer_Previews: PreviewProvider {
    static var previews: some View {
        
        RowTransferView(transfer: Transfers(id: 1, concept: "Transferencia 1", destinationAccount: "Cta destino: XXX574", amount: 500))
    }
}
