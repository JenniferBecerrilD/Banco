//
//  BarView.swift
//  Banco
//
//  Created by Jennifer Becerril on 07/12/21.
//

import SwiftUI

struct BarView: View {
    
    @State var selection: Int = 0
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor(Color(Constants.mainOrangeColor))
        UITabBar.appearance().unselectedItemTintColor = UIColor.white.withAlphaComponent(0.6)
    }

    
    var body: some View {
        TabView{
            
            ListPayeeView()
            .tabItem{
                Image(systemName: "person")
            }
            
            
            //Text("")
            MainView()
            .tabItem{
                Image(systemName: "house")
            }
            
            
            //Text("")
            TransferView()
            .tabItem{
                Image(systemName: "arrow.left.arrow.right")
            }
            
        }
        
        //.edgesIgnoringSafeArea(.top)
        .accentColor(.white)
        .font(.headline)
                
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
