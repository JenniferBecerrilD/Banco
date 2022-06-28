//
//  MenuHeaderView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

struct MenuHeaderView: View {
    @Binding var isShowing: Bool
    let account : AccountBodyResponse = accounts [0]
    @ObservedObject var accountViewModel = AccountViewModel()
    var body: some View {
        //Spacer().frame(minHeight: 5)
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
                
                
                
                Text(accountViewModel.accountBodyResponse.nickname).font(.system(size: 24, weight: .semibold))
                            
                Text("\(accountViewModel.accountBodyResponse.balance)").font(.title2).font(.system(size: 14))
                            
                Text(accountViewModel.accountBodyResponse.number).font(.system(size: 14))
                
                
                HStack(spacing: 12){
                    HStack(spacing: 4){
                       Text("")
                    }
                   Spacer()
                }
                
            }
            .foregroundColor(.white)
            .padding()
        }.padding(.top, 80)
            //.padding(20)
        Spacer()
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView(isShowing: .constant(true))
        
    }
}
