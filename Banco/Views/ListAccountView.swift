//
//  ListView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

private let account = [Accounts(id: 1, name: "Prueba 1", number: "Cuenta: 5578475574", avatar: Image(systemName: "person.fill")),
                       Accounts(id: 2, name: "Prueba 2", number: "Cuenta: 5578475575", avatar: Image(systemName: "person.fill")),
                       Accounts(id: 3, name: "Prueba 3", number: "Cuenta: 5578475576", avatar: Image(systemName: "person.fill")),
                       Accounts(id: 4, name: "Prueba 4", number: "Cuenta: 5578475577", avatar: Image(systemName: "person.fill")),
                       Accounts(id: 5, name: "Prueba 5", number: "Cuenta: 5578475578", avatar: Image(systemName: "person.fill"))]

struct ListAccountView: View {
    //@State private var text = "Hello"
    @State private var change : Bool = false
    @State private var showModal = false
    @State var selection: Int = 0
    
    var body: some View {
        NavigationView {
            
           
            ZStack(alignment: .bottomTrailing){
                
              
                Color(Constants.mainOrangeColor).opacity(0.06).ignoresSafeArea(.all)
                
             
                //Cuentas sin ZStack
                VStack {
                    
                    /*Text("Cuentas registradas")
                        .fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 9)*/
                    
                    List(account, id: \.id){
                    
                    accounts in NavigationLink(destination: ListAccountDetailView(account:accounts)){ RowAccountView(account:accounts)
                    }
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
                
        }
            
        }.navigationBarTitle("Cuentas").navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
        
        
        //Spacer()
        
        }
}












struct ListAccountView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListAccountView()
        
    }
}
