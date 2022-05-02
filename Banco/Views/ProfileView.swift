//PROFILE CON BACKEND
//  Home2View.swift
//  Banco
//
//  Created by Jennifer Becerril on 20/12/21.
//

import SwiftUI

struct ProfileView: View {
    
    let maxHeight = UIScreen.main.bounds.height / 3
    
    var topEdge: CGFloat
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 15){
                
                GeometryReader{proxy in
                    
                    topBar(topEdge: topEdge)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .background(Color(Constants.mainOrangeColor))
                }
                .frame(height: maxHeight)
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


struct topBar: View{
    var topEdge: CGFloat
    let account : AccountBodyResponse = accounts [0]
    //@ObservedObject var accountViewModel = AccountViewModel()
    var body: some View{
        VStack{
            Image(systemName: "person.fill")
                .resizable().frame(width: 60, height: 60)
                .padding().foregroundColor(Color.black)
                
            Text(account.nickname).font(.title).fontWeight(.bold)
                .foregroundColor(Color.black)
            
            Text(" \(account.balance)").font(.title2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
            Text(" \(account.number)").font(.title2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
            
            /*Text("Cuenta de ahorro")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            Text("$10")
                .font(.title2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)*/
        }
        .padding()
        .padding(.bottom)
    }
}
