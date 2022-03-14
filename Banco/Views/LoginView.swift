//
//  Login2View.swift
//  Banco
//
//  Created by Jennifer Becerril on 01/12/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            Home()
                .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct Home : View {
    
    @State var userName = ""
    @State var password = ""
    
    var body : some View {
        ZStack {
            Color(Constants.mainGrayColor).opacity(0.06).ignoresSafeArea(.all)
            VStack{
                
                
                //Spacer(minLength: 0)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    //.padding(.horizontal,35)
                    .padding(.vertical)
                
               
                
                VStack (alignment: .leading){
                    VStack{
                        Text("Usuario")
                            .font(.headline)
                            .foregroundColor(Color.black)
                        
                           
                    }
                    
                        
        
                    
                    HStack{
                        Image(systemName: "person")
                            .modifier(textFieldImageStyles())
                        
                        TextField("Ingresa tu usuario", text: $userName)
                           
                            
                    }
                    .modifier(textFieldStyles())
                    
                    Spacer().frame(height: 40)
                    
                
                    
                    Text("Contraseña")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    .frame(alignment: .leading)
                    
                    
                    HStack{
                        Image(systemName: "lock")
                            .modifier(textFieldImageStyles())
                        
                        SecureField("Ingresa tu contraseña", text: $password)
                    }
                    .modifier(textFieldStyles())
                    
                    Spacer().frame(height: 40)
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: BarView().navigationBarBackButtonHidden(true)){
                         Text("Iniciar sesión").font(.headline)
                             .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                        }
                       
                        
                     })
                        .modifier(acceptButtonStyle())
                }
                .modifier(boxTextFieldStyles())
                
                
                
                
            }
            .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        }
    }
}
