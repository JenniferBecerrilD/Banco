//
//  ErrorView.swift
//  Banco
//
//  Created by Jennifer Becerril on 13/12/21.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack{
            
            Text("Error al registrar")
                .font(.title)
                .fontWeight(.bold)
               
            
            
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .foregroundColor(.red)
                
            
            
            Button(action: {}, label: {
                Text("Aceptar").font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width - 120).padding()
                    
            })
                .background(Color(.orange))
                .clipShape(Capsule())
                .padding(.top, 45)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
