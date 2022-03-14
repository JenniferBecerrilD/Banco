//
//  ContentView.swift
//  Banco
//
//  Created by Jennifer Becerril on 24/10/21.
//

import SwiftUI


private let transfer = [Transfers(id: 1, name: "Transferencia 1", number: "Cta destino: XXX574", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 2, name: "Transferencia 2", number: "Cta destino: XXX575", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 3, name: "Transferencia 3", number: "Cta destino: XXX576", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 4, name: "Transferencia 4", number: "Cta destino: XXX577", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
                              Transfers(id: 5, name: "Transferencia 5", number: "Cta destino: XXX578", quantity: "$500", avatar: Image(systemName: "arrow.left.arrow.right"))]






struct MainView: View {
   
    @State private var isShowing = false
    
  
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                GeometryReader{proxy in
                    let topEdge = proxy.safeAreaInsets.top
                    
                    ProfileView(topEdge: topEdge)
                        .ignoresSafeArea(.all, edges: .top)
                }
                
                
                if isShowing {
                    MenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 500 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button (action: { withAnimation(.spring()){ isShowing.toggle() }}, label: { Image(systemName: "list.bullet").foregroundColor(.black)
                    }))
                 
                
            }
            
            
            
            
            .onAppear{
                isShowing = false
                
                
                
        }
            
            
        }
        
   
        
        
        
        
    }
    
}





struct Box {
    var id: Int
    let title, imageUrl: String
}

struct HomeView: View {
    
    @State var selection: Int = 0
    
    var body: some View {
        

        Spacer()
        
        
        ZStack {
            Color(.gray).opacity(0.06).ignoresSafeArea(.all)
            //Color(.gray).opacity(0.06).ignoresSafeArea(.all)
            VStack {
                
                
                Spacer()
                
                HStack{
                    
                   
                    VStack{
                        Button(action: {}) {
                            NavigationLink(destination: TransferView()){
                            Image(systemName: "arrow.left.arrow.right")
                                .modifier(mainButtonStyle())
                        }
                        
                        }
                        Text("Transferir")
                            .font(.headline)
                            
                        
                    }
                    Spacer()
                    VStack{
                        Button(action: {}) {
                            NavigationLink(destination: ListAccountView()){
                            Image(systemName: "person.fill")
                                .modifier(mainButtonStyle())
                            }
                        }
                        Text("Cuentas")
                            .font(.headline)
                            
                    }
                    Spacer()
                    VStack{
                        Button(action: {}) {
                            
                            Image(systemName: "arrow.up.right")
                                .modifier(mainButtonStyle())
                            
                        }
                        Text("Retiro")
                            .font(.headline)
                            //.bold()
                    }
                    
                    
                }
                .padding()
                
            }
            
            
            
            
        }
        
        
        
        ZStack {
            
            Color(Constants.mainGrayColor).ignoresSafeArea()
            VStack (alignment: .leading){
                
                VStack (alignment: .leading){
                    
                    Text("Movimientos").font(.title)
                    List(transfer, id: \.id){
                        transferencia in RowTransferView(transfer:transferencia)
                        
                        
                    }
                }.padding()
            
            
                    
                    
            }
            .padding(.vertical)
        }
        
                
        }
            
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}




