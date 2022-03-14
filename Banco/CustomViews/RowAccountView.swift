//
//  RowView.swift
//  Banco
//
//  Created by Jennifer Becerril on 26/10/21.
//

import SwiftUI

struct RowAccountView: View {
    
    var account: Accounts
    
    var body: some View {
        HStack{
            account.avatar.resizable().frame(width: 40, height: 40).padding(10)
            
            VStack(alignment:.leading){
                Text(account.name)
                    .font(.title2)
                Text(account.number)
                    .font(.headline)
            }
            Spacer()
        }
    }
}

struct RowAccountView_Previews: PreviewProvider {
    static var previews: some View {
        RowAccountView(account: Accounts(id: 1, name: "Prueba 1", number: "Cuenta: 5578475574", avatar: Image(systemName: "person.fill")))
    }
}
