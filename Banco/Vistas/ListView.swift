//
//  ListView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

private let cuentas = [Cuenta(id: 1, nombre: "Prueba 1", numero: "Cuenta: 5578475574", avatar: Image(systemName: "person.fill")),
    Cuenta(id: 2, nombre: "Prueba 2", numero: "Cuenta: 5578475575", avatar: Image(systemName: "person.fill")),
    Cuenta(id: 3, nombre: "Prueba 3", numero: "Cuenta: 5578475576", avatar: Image(systemName: "person.fill")),
    Cuenta(id: 4, nombre: "Prueba 4", numero: "Cuenta: 5578475577", avatar: Image(systemName: "person.fill")),
    Cuenta(id: 5, nombre: "Prueba 5", numero: "Cuenta: 5578475578", avatar: Image(systemName: "person.fill"))]

struct ListView: View {
    //@State private var text = "Hello"
    @State private var change : Bool = false
    @State private var showModal = false
    @State var selection: Int = 0
    
    var body: some View {
        NavigationView {
            
           
            ZStack(alignment: .bottomTrailing){
                
              
                Color(.gray).opacity(0.06).ignoresSafeArea(.all)
                
             
                //Cuentas sin ZStack
                VStack {
                    /*Text("Cuentas registradas")
                        .fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 9)*/
                    
                    List(cuentas, id: \.id){
                    
                    cuenta in NavigationLink(destination: ListDetailView(cuentas:cuenta)){ RowView(cuentas:cuenta)
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
                    .background(Color.orange)
                    .clipShape(Circle())
                    .shadow(radius: 4)
            .padding()
                
                ModalView(isShowing: $showModal)
                
        }
            
        }.navigationBarTitle("Cuentas").navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
        
        
        Spacer()
        
        }
}












struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListView()
        
    }
}
