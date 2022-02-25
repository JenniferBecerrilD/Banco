//
//  Login2View.swift
//  Banco
//
//  Created by Jennifer Becerril on 01/12/21.
//

import SwiftUI

struct Login2View: View {
    var body: some View {
        NavigationView{
            Home()
                .navigationBarHidden(true)
        }
    }
}

struct Login2View_Previews: PreviewProvider {
    static var previews: some View {
        Login2View()
    }
}

struct Home : View {
    
    @State var userName = ""
    @State var password = ""
    
    var body : some View {
        ZStack {
            Color(.gray).opacity(0.06).ignoresSafeArea(.all)
            VStack{
                
                
                //Spacer(minLength: 0)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    //.padding(.horizontal,35)
                    .padding(.vertical)
                
                /*HStack{
                    VStack(alignment: .leading, spacing: 12, content: {
                        Text("Login")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Por favor inicia sesión")
                            .foregroundColor(Color.black.opacity(0.5))
                    })
                    Spacer(minLength: 0)
                }
                .padding()*/
                
                VStack (alignment: .leading){
                    VStack{
                        Text("Usuario")
                            .font(.headline)
                            .foregroundColor(Color.black)
                        //.frame(alignment: .leading)
                           
                    }
                    
                        
        
                    
                    HStack{
                        Image(systemName: "person")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        TextField("Ingresa tu usuario", text: $userName)
                           
                            
                    }
                    .padding()
                    //.background(Color.gray.opacity(0.12))
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    Spacer().frame(height: 40)
                    
                
                    
                    Text("Contraseña")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    .frame(alignment: .leading)
                    
                    
                    HStack{
                        Image(systemName: "lock")
                            .font(.title2)
                            .foregroundColor(.black)
                            .frame(width: 35)
                        
                        SecureField("Ingresa tu contraseña", text: $password)
                    }
                    .padding()
                    //.background(Color.gray.opacity(0.12))
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    Spacer().frame(height: 40)
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: Bar2View().navigationBarBackButtonHidden(true)){
                         Text("Iniciar sesión").font(.headline)
                             .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                        }
                        /*.navigationBarTitle(Text("")).navigationBarHidden(true)*/
                        
                     })
                         .background(Color(.orange))
                         .clipShape(Capsule())
                         .padding(.horizontal)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .padding(.horizontal)
                .shadow(color: .gray, radius: 2, x: 2, y: 4)
                
                
                
                
                //Spacer()
                /*NavigationView {
                         NavigationLink(destination: Bar2View()) {
                             Text("Iniciar sesión").font(.headline)
                                 .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                         }.background(Color(.orange))
                        .clipShape(Capsule())
                        .padding(.top, 45)
                      }*/
                
               
                    
                
                
               /* Button( action: {}, label: {
                    Text("[or]")
                        .foregroundColor(Color.black.opacity(0.6))
                })
                    .padding(.top,8)
                
                
                //Spacer(minLength: 0)
                
                
                HStack(spacing: 6){
                    Text("No tienes una cuenta?")
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button( action: {}, label: {
                        Text("Inicia sesión")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.blue.opacity(0.6))
                    })
                }
                .padding(.vertical)*/
            }
            .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        }
    }
}
