//
//  ContentView.swift
//  Banco
//
//  Created by Jennifer Becerril on 24/10/21.
//

import SwiftUI


private let transferencias = [Transferencia(id: 1, nombre: "Transferencia 1", numero: "Cta destino: XXX574", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 2, nombre: "Transferencia 2", numero: "Cta destino: XXX575", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 3, nombre: "Transferencia 3", numero: "Cta destino: XXX576", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 4, nombre: "Transferencia 4", numero: "Cta destino: XXX577", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right")),
    Transferencia(id: 5, nombre: "Transferencia 5", numero: "Cta destino: XXX578", cantidad: "$500", avatar: Image(systemName: "arrow.left.arrow.right"))]






struct ContentView: View {
   
    @State private var isShowing = false
    
  
    var body: some View {
        
        NavigationView {
            
            ZStack {
                GeometryReader{proxy in
                    let topEdge = proxy.safeAreaInsets.top
                    
                    Home2View(topEdge: topEdge)
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
        
        
        
        /*NavigationView{
            
            ZStack {
                
                if isShowing {
                    MenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 350 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button (action: { withAnimation(.spring()){ isShowing.toggle() }}, label: { Image(systemName: "list.bullet").foregroundColor(.black)
                    }))
                 
                
            }
            
            
            
            .onAppear{
                isShowing = false
            }
            
            
        }.navigationTitle("Mov")*/
        
        
        
        
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
            VStack {
                
                
                Spacer()
                
                HStack{
                    
                    /*NavigationView {
                             NavigationLink(destination: Bar2View()) {
                                 Text("Iniciar sesión").font(.headline)
                                     .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                             }.background(Color(.orange))
                            .clipShape(Capsule())
                            .padding(.top, 45)
                          }*/
                    VStack{
                        Button(action: {}) {
                            NavigationLink(destination: TransferView()){
                            Image(systemName: "arrow.left.arrow.right")
                                .foregroundColor(.black)
                                .padding(.all, 36)
                                .background(Color.white)
                                .cornerRadius(12)
                                //.shadow(radius: 2)
                                .shadow(color: .gray, radius: 4, x: 2, y: 2)
                        }
                        
                        }
                        Text("Transferir")
                            .font(.headline)
                            //.bold()
                        
                    }
                    Spacer()
                    VStack{
                        Button(action: {}) {
                            NavigationLink(destination: ListView()){
                            Image(systemName: "person.fill")
                                .foregroundColor(.black)
                                .padding(.all, 36)
                                .background(Color.white)
                                .cornerRadius(12)
                                //.shadow(radius: 2)
                                .shadow(color: .gray, radius: 4, x: 2, y: 2)
                            }
                        }
                        Text("Cuentas")
                            .font(.headline)
                            //.bold()
                    }
                    Spacer()
                    VStack{
                        Button(action: {}) {
                            
                            Image(systemName: "arrow.up.right")
                                .foregroundColor(.black)
                                .padding(.all, 36)
                                .background(Color.white)
                                .cornerRadius(12)
                                //.shadow(radius: 2)
                                .shadow(color: .gray, radius: 4, x: 2, y: 2)
                            
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
            
            Color(.gray).opacity(0.06).ignoresSafeArea(.all)
            VStack (alignment: .leading){
                VStack (alignment: .leading){
                    Text("Movimientos").font(.title)
                }.padding()
            
            
                //VStack {
                    List(transferencias, id: \.id){
                                transferencia in RowViewTrans(transferencias:transferencia)
                        
                        
                    }
                    
                    
                    //}
                //}
                //VStack{
                   /* TabView(selection: $selection) {
                        Text("")
                            .tabItem{
                                
                            }
                            .tag(0)
                        
                        Text("")
                            .tabItem{
                                
                            }
                            .tag(1)
                        
                        Text("")
                            .tabItem{
                                
                            }
                            .tag(2)
                    }
                    .overlay(
                        Color.orange
                            .edgesIgnoringSafeArea(.vertical)
                            .frame(height: 50)
                            .overlay(HStack {
                                Spacer()
                                
                                
                                Button(action: {
                                    self.selection = 0
                                }, label: {
                                    Image(systemName: "person")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25, alignment: .center)
                                        .foregroundColor(Color.white)
                                        .opacity(selection == 0 ? 1 : 0.4)
                                })
                                Spacer()
                                
                               
                                Button(action: {
                                    self.selection = 1
                                }, label: {
                                    Image(systemName: "house")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25, alignment: .center)
                                        .foregroundColor(Color.white)
                                        .opacity(selection == 1 ? 1 : 0.4)
                                })
                                
                                Spacer()
                                
                                Button(action: {
                                    self.selection = 2
                                }, label: {
                                    Image(systemName: "creditcard")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25, alignment: .center)
                                        .foregroundColor(Color.white)
                                        .opacity(selection == 2 ? 1 : 0.4)
                                })
                                Spacer()
                                
                            })
                        ,alignment: .bottomTrailing)
                */
            }
            .padding(.vertical)
        }
        
        
        //TAB????
        
        
        
        }
            
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




