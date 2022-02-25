//
//  TransferView.swift
//  Banco
//
//  Created by Jennifer Becerril on 12/11/21.
//

import SwiftUI

struct TransferView: View {
    var body: some View {
        Transfer()
    }
}

struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}

struct Transfer : View {
    
    @State var destiny = ""
    @State var concept = ""
    @State var money = ""
    
    @State var cuenta = ""
    @State var concepto = ""
    @State var monto = ""
    
    
    @State private var isExpanded = false
    @State private var selectedNum = 1
    
    @State var selection: Int = 0
    
    var body : some View{
        
        ZStack {
            Color(.gray).opacity(0.06).ignoresSafeArea(.all)
            
            
            
            
            VStack{
                
       
                
                /*Text("Transferir").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 9)*/
             
                        
                        
                        VStack (alignment: .leading){
                            VStack (alignment: .leading){
                                Text("Cuenta de destino")
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                //.frame(alignment: .leading)
                                
                                DisclosureGroup("\(selectedNum)", isExpanded: $isExpanded) {
                                    ScrollView{
                                    VStack {
                                        ForEach(5578475574...5578475578, id: \.self){
                                            num in Text ("\(num)").font(.title3)
                                                .padding(.all).onTapGesture{
                                                    self.selectedNum = num
                                                    withAnimation{
                                                    self.isExpanded.toggle()
                                                }
                                                }
                                        }
                                    }
                                    }.frame(height: 150)
                                }.accentColor(.black)
                                    .font(.title2)
                                    .foregroundColor(Color.init(.label).opacity(0.75))
                                    .padding(.all)
                                    //.background(Color.white)
                                    //.cornerRadius(8)
                                    //.border(Color.init(.label).opacity(0.75))
                                
                                
                                    //.padding()
                                    //.background(Color.gray.opacity(0.12))
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                                
                                   
                            }
                                
                
                            
                            Spacer().frame(height: 40)
                            
                       
                
                    VStack{
                        Text("Concepto")
                            .font(.headline)
                            .foregroundColor(Color.black)
                        //.frame(alignment: .leading)
                           
                    }
                        
        
                    
                    HStack{
                        Image(systemName: "ellipsis.bubble")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        TextField("Ingresa el concepto", text: $concepto)
                            
                    }
                    .padding()
                    //.background(Color.gray.opacity(0.12))
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
               
                
                
                
                            Spacer().frame(height: 40)
                
                
                
                
                    VStack{
                        Text("Monto")
                            .font(.headline)
                            .foregroundColor(Color.black)
                        //.frame(alignment: .leading)
                           
                    }
                        
        
                    
                    HStack{
                        Image(systemName: "dollarsign.circle")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        TextField("Ingresa el monto", text: $monto)
                            
                    }
                    .padding()
                    //.background(Color.gray.opacity(0.12))
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                    .padding(.horizontal)
                            
                            Spacer().frame(height: 40)
                            
                            butonView()
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .padding(.horizontal)
                .shadow(color: .gray, radius: 2, x: 2, y: 4)
                        
                       
                        
                        
                Spacer()
                
              
            }
            //Spacer()
        }
        
        .navigationBarTitle("Transferir").navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
        
        
        
        
    }
}





struct butonView : View{
    @State private var alertSwift = false
    
    var body : some View{
        
        VStack{
            
    
            //BOTON CON ALERTA
            Button(action: {
                self.alertSwift = true
                
            }, label: {
                Text("Transferir").font(.headline)
                    .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
            })
                .background(Color(.orange))
                .clipShape(Capsule())
                //.padding(.top, 45)
                .padding(.horizontal)
                .cornerRadius(8)
                .alert(isPresented: $alertSwift, content: {
                    
                    Alert(title: Text("Transferencia exitosa!"), message: Text("Tu transferencia se realizó correctamente"), dismissButton: .default(Text("Cerrar")))
                    
                })
            
            
            //BOTON SIN ALERTA
            /*Button(action: {}, label: {
                NavigationLink(destination: SuccessView()){
                 Text("Transferir").font(.headline)
                     .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                }
                     
             })
                 .background(Color(.orange))
                 .clipShape(Capsule())
                 .padding(.top, 45)
            
            */
            
            
            HStack{
                
    
                
            }.padding(.top, 25)
            
           
        }
    }
}



