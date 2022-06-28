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
    
   
    
    @State var destinationAccount = "Elige una cuenta"
    //@State var sourceAccount = ""
    @State var concept = ""
    @State var amount = ""
    
    @ObservedObject var addTransferViewModel = AddTransferViewModel()
    @ObservedObject var payeeViewModel = PayeeViewModel()
    //@ObservedObject var accountViewModel = AccountViewModel()
    
    @State private var alertSwift = false
    @State private var isExpanded = false
    //@State private var selectedNum = "1"
    
    @State var selection: Int = 0
    
    var body : some View{
        
        ZStack {
            Color.mainGrayColor.ignoresSafeArea(.all)
            
            
            VStack{
                        
                        VStack (alignment: .leading){
                            VStack (alignment: .leading){
                                Text("Cuenta de destino")
                                    .font(.headline)
                                    //.foregroundColor(Color.black)
                                
                                
                                DisclosureGroup("\(destinationAccount)", isExpanded: $isExpanded) {
                                    ScrollView{
                                    VStack {
                                        ForEach(0 ..< payeeViewModel.payees.data.count, id: \.self){ num in Text ("\(payeeViewModel.payees.data[num].accountNumber)").font(.title3).padding(.all).onTapGesture{self.destinationAccount = payeeViewModel.payees.data[num].accountNumber
                                            withAnimation{self.isExpanded.toggle()}}}
                                        
                                    
                                    }
                                    }.frame(height: 150)
                                }.accentColor(.black)
                                    .font(.title2)
                                    .foregroundColor(Color.init(.label).opacity(0.75))
                                    .modifier(textFieldStyles())
                                
                                   
                            }
                            //.modifier(textFieldStyles())
                                
                
                            
                            Spacer().frame(height: 40)
                            
                       
                
                    VStack{
                        Text("Concepto")
                            .font(.headline)
                            //.foregroundColor(Color.black)
                        //.frame(alignment: .leading)
                           
                    }
                    .modifier(textFieldTextStyles())
        
                    
                    HStack{
                        Image(systemName: "ellipsis.bubble")
                            .modifier(textFieldImageStyles())
                        
                        TextField("Ingresa el concepto", text: $concept)
                            
                    }
                    .modifier(textFieldStyles())
                    
               
                
                
                
                            Spacer().frame(height: 40)
                
                
                
                
                    VStack{
                        Text("Monto")
                            .font(.headline)
                            //.foregroundColor(Color.black)
                        //.frame(alignment: .leading)
                           
                    }
                    .modifier(textFieldTextStyles())
                   
                        
        
                    
                    HStack{
                        Image(systemName: "dollarsign.circle")
                            .modifier(textFieldImageStyles())
                        
                        TextField("Ingresa el monto", text: $amount)
                            
                    }
                    .modifier(textFieldStyles())
                            
                            Spacer().frame(height: 40)
                            
                            if #available(iOS 15.0, *) {
                                Button(action: {addTransferViewModel.validateInfo(destiny: destinationAccount, total: amount, detail: concept);self.alertSwift = true}/*, label: {
                                                                                                                   NavigationLink(destination: BarView().navigationBarBackButtonHidden(true))*/){
                                                                                                                       Text("Transferir").font(.headline)
                                                                                                                           .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                                                                                                                   }
                                //Aqui termina boton
                                                                                                                   .modifier(acceptButtonStyle())
                                                                                                                   .alert(isPresented: $alertSwift, content: {
                                                                                                                       
                                                                                                                       Alert(title: Text("Transferencia completa!"), message: Text("Tu transferencia se realizó correctamente."), dismissButton: .default(Text("Cerrar")))
                                                                                                                       
                                                                                                                   })
                            }
}
                    
                
                .modifier(boxTextFieldStyles())
                        
                       
                        
                        
                Spacer()
                
              
            }
            
        }
        
        .navigationBarTitle("Transferir").navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline).background(Color.mainGrayColor)
        
        
        
        
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



