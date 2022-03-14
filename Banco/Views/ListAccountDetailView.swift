//
//  ListDetailView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI


struct ListAccountDetailView: View {
    
    var account: Accounts
    
    var body: some View {
        ZStack {
            Color(Constants.mainGrayColor).ignoresSafeArea()
            VStack{
                account.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
                Text(account.name).font(.title)
                Text(account.number).font(.title3)
                Spacer()
            }
        }
    }
}

struct ListAccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListAccountDetailView(account: Accounts(id: 1, name: "Prueba 1", number: "Cuenta: 5578475574", avatar: Image(systemName: "person.fill")))
    }
}
