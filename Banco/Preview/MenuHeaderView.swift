//
//  MenuHeaderView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

struct MenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            
            //Boton cerrar menu
            Button(action: { withAnimation(.spring()){ isShowing.toggle() } }, label: { Image(systemName: "xmark").frame(width: 32, height: 32).foregroundColor(.white).padding()
                
            })
            
            
            
            
            
            VStack(alignment: .leading){
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
                
                Text("Mi cuenta")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("12345678")
                    .font(.system(size: 14))
                
                HStack(spacing: 12){
                    HStack(spacing: 4){
                       Text("")
                    }
                   Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        .padding()
        }
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView(isShowing: .constant(true))
        
    }
}
