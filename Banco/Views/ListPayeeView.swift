//
//  ListView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

private let payee = [PayeeBodyResponse(id: 1, nickname: "Prueba 1", accountNumber: "Cuenta: 5578475574", userId: "5578475574"),
                       PayeeBodyResponse(id: 2, nickname: "Prueba 2", accountNumber: "Cuenta: 5578475575", userId: "5578475574"),
                       PayeeBodyResponse(id: 3, nickname: "Prueba 3", accountNumber: "Cuenta: 5578475576", userId: "5578475574"),
                       PayeeBodyResponse(id: 4, nickname: "Prueba 4", accountNumber: "Cuenta: 5578475577", userId: "5578475574"),
                       PayeeBodyResponse(id: 5, nickname: "Prueba 5", accountNumber: "Cuenta: 5578475578", userId: "5578475574")]

struct ListPayeeView: View {
    //@State private var text = "Hello"
    @State private var change : Bool = false
    @State private var showModal = false
    @State var selection: Int = 0
    //@State var selection: Int = 0
    
    @ObservedObject var payeeViewModel = PayeeViewModel()
    var body: some View {
        
            
           
            ZStack(alignment: .bottomTrailing){
                
              
                Color(Constants.mainOrangeColor).opacity(0.06).ignoresSafeArea(.all)
                
             
                //Cuentas sin ZStack
                VStack {
                    
                    /*Text("Cuentas registradas")
                        .fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 9)*/
                    
                    /*List(account, id: \.id){
                    
                    accounts in NavigationLink(destination: ListAccountDetailView(account:accounts)){ RowAccountView(account:accounts)
                    }
                    }*/
                    
                    List(payeeViewModel.payees.data,id: \.id){payees in NavigationLink(destination: ListPayeeDetailView(payee:payees)){ RowPayeeView(payee:payees)}
                    
                    }
                   
                }
            
                
                Button(action: {
                    //self.change.toggle()
                    showModal = true
                }) {
                    Image (systemName: self.change ? "plus": "xmark")
                }.padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(Color(Constants.mainOrangeColor))
                    .clipShape(Circle())
                    .shadow(radius: 4)
            .padding()
                
                ModalAccountView(isShowing: $showModal)
                
            }.navigationBarTitle("Cuentas").navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
      
        
        
        Spacer()
        
        }
}












struct ListPayeeView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListPayeeView()
        
    }
}
