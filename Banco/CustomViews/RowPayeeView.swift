//
//  RowView.swift
//  Banco
//
//  Created by Jennifer Becerril on 26/10/21.
//

import SwiftUI

struct RowPayeeView: View {
    
    var payee: PayeeBodyResponse
    
    var body: some View {
        HStack{
            
            Image(systemName: "person.fill").resizable().frame(width: 40, height: 40).padding(10)
            
            VStack(alignment:.leading){
                Text(payee.nickname)
                    .font(.title2)
                Text(payee.accountNumber)
                    .font(.headline)
                Text(payee.userId)
                    .font(.headline)
            }
            Spacer()
        }
    }
}

struct RowPayeeView_Previews: PreviewProvider {
    static var previews: some View {
        RowPayeeView(payee: PayeeBodyResponse(id: 1, nickname: "Prueba 1", accountNumber: "Cuenta: 5578475574", userId: "5578475574"))
    }
}
