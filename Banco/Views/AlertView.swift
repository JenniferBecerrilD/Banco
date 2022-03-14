//
//  AlertView.swift
//  Banco
//
//  Created by Jennifer Becerril on 12/11/21.
//

import SwiftUI

struct AlertView: View {
    @State private var alertSwift = false
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    self.alertSwift = true
                    
                }, label: {
                    Text("Click")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 24))
                    
                })
                    .frame(width: 200, height: 50, alignment: .center)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .alert(isPresented: $alertSwift, content: {
                        
                        Alert(title: Text("Registro completo!"), message: Text("Tu cuenta se registro correctamente"), dismissButton: .default(Text("Listo!")))
                        
                    })
                
            }
            .navigationTitle("")
        }
        
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}


