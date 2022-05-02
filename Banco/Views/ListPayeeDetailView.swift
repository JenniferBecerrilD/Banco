//
//  ListDetailView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI


struct ListPayeeDetailView: View {
    
    var payee: PayeeBodyResponse
    
    var body: some View {
        ZStack {
            Color(Constants.mainGrayColor).ignoresSafeArea()
            VStack{
                /*account.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)*/
                Image(systemName: "person.fill").resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
                Text(payee.nickname).font(.title)
                Text(payee.accountNumber).font(.title3)
                Text(payee.userId).font(.title3)
                Spacer()
            }
        }
    }
}

struct ListPayeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListPayeeDetailView(payee: PayeeBodyResponse(id: 1, nickname: "Prueba 1", accountNumber: "Cuenta: 5578475574", userId: "5578475574"))
    }
}
