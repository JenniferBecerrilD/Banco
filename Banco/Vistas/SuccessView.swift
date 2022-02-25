//
//  SuccessView.swift
//  Banco
//
//  Created by Jennifer Becerril on 13/12/21.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        
        VStack{
            
            Text("Registro exitoso")
                .font(.title)
                .fontWeight(.bold)
               
            
            
            Image(systemName: "checkmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .foregroundColor(.green)
                
            
            
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

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}

