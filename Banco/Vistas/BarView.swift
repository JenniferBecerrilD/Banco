//
//  BarView.swift
//  Banco
//
//  Created by Jennifer Becerril on 07/12/21.
//

import SwiftUI

struct BarView: View {
    
    
    init(){
        UITabBar.appearance().barTintColor = UIColor.blue
    }
    
    var body: some View {
        TabView{
            Text("")
            .tabItem{
                Image(systemName: "person")
            }
            
            
            Text("")
            .tabItem{
                Image(systemName: "house")
            }
            
            
            Text("")
            .tabItem{
                Image(systemName: "creditcard")
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.orange)
        
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
