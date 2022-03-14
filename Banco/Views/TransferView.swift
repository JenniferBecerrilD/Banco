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
            Color(Constants.mainGrayColor).opacity(0.06).ignoresSafeArea(.all)
            
            
            
            
            VStack{
                
       
              
                        
                        
                        VStack (alignment: .leading){
                            VStack (alignment: .leading){
                                Text("Cuenta de destino")
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                
                                
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
                                    .modifier(textFieldStyles())
                                
                                   
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
                            .modifier(textFieldImageStyles())
                        
                        TextField("Ingresa el concepto", text: $concepto)
                            
                    }
                    .modifier(textFieldStyles())
                    
               
                
                
                
                            Spacer().frame(height: 40)
                
                
                
                
                    VStack{
                        Text("Monto")
                            .font(.headline)
                            .foregroundColor(Color.black)
                        //.frame(alignment: .leading)
                           
                    }
                        
        
                    
                    HStack{
                        Image(systemName: "dollarsign.circle")
                            .modifier(textFieldImageStyles())
                        
                        TextField("Ingresa el monto", text: $monto)
                            
                    }
                    .modifier(textFieldStyles())
                            
                            Spacer().frame(height: 40)
                            
                            butonView()
                    
                }
                .modifier(boxTextFieldStyles())
                        
                       
                        
                        
                Spacer()
                
              
            }
            
        }
        
        .navigationBarTitle("Transferir").navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
        
        
        
        
    }
}





struct butonView : View{
    @State private var alertSwift = false
    
    var body : some View{
        
        VStack{
            
    
            Button(action: {
                self.alertSwift = true
                
            }, label: {
                Text("Transferir").font(.headline)
                    .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
            })
                .modifier(acceptButtonStyle())
                .alert(isPresented: $alertSwift, content: {
                    
                    Alert(title: Text("Transferencia exitosa!"), message: Text("Tu transferencia se realizó correctamente"), dismissButton: .default(Text("Cerrar")))
                    
                })
            
            
        
            
            
            HStack{
                
    
                
            }.padding(.top, 25)
            
           
        }
    }
}



