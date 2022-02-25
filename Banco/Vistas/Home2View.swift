//
//  Home2View.swift
//  Banco
//
//  Created by Jennifer Becerril on 20/12/21.
//

import SwiftUI

struct Home2View: View {
    
    let maxHeight = UIScreen.main.bounds.height / 3
    
    var topEdge: CGFloat
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 15){
                
                GeometryReader{proxy in
                    
                    topBar(topEdge: topEdge)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .background(Color.orange)
                }
                .frame(height: maxHeight)
                
            }
        }
    }
}

struct Home2View_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct topBar: View{
    var topEdge: CGFloat
    
    var body: some View{
        VStack{
            Image(systemName: "person.fill")
                .resizable().frame(width: 60, height: 60)
                .padding().foregroundColor(Color.black)
                /*.resizable().frame(width: 60, height: 60).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
                .padding().foregroundColor(Color.white)*/
                
            Text("Cuenta de ahorro")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            Text("$10")
                .font(.title2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
        }
        .padding()
        .padding(.bottom)
    }
}
