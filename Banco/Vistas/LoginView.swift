//
//  LoginView.swift
//  Banco
//
//  Created by Jennifer Becerril on 28/10/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Login()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct Login : View {
    
    @State var user = ""
    @State var pass = ""
    
    var body : some View{
        
        VStack{
            
            Image("logo").resizable().scaledToFit().frame(width: 96, height: 68)
            
            Text("").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 0)
            
            VStack(alignment: .leading){
                
                VStack(alignment: .leading){
                    
                    Text("Usuario").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    
                    HStack{
                        
                        TextField("Ingresa tu usuario", text: $user)
                        
                        if user != ""{
                            
                            Image(systemName:"checkmark").foregroundColor(Color.init(.label))
                        }
                        
                    }
                    
                    Divider()
                    
                }.padding(.bottom, 15)
                
                VStack(alignment: .leading){
                    
                    Text("Contraseña").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                    SecureField("Ingresa tu contraseña", text: $pass)
                    
                    Divider()
                }
                
                HStack{
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Olvidaste tu contraseña?").foregroundColor(Color.gray.opacity(0.5))
                    }
                }

            }.padding(.horizontal, 6)
            
            
            bottomView()
            
        }.padding()
    }
}

struct bottomView : View{
    
    var body : some View{
        
        VStack{
            
    
            Button(action: {
                
            }) {
                
                    
                Text("Iniciar sesión").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
                
            }.background(Color(.orange))
            .clipShape(Capsule())
            .padding(.top, 45)
            
            
            
            Text("(or)").foregroundColor(Color.gray.opacity(0.5)).padding(.top,10)
            
            HStack{
                
    
                
            }.padding(.top, 25)
            
            HStack(spacing: 8){
                
                Text("No tienes una cuenta?").foregroundColor(Color.gray.opacity(0.5))
                
                Button(action: {
                    
                }) {
                    
                   Text("Inicia sesión")
                    
                }.foregroundColor(.blue)
                
            }.padding(.top,1)
        }
    }
}



