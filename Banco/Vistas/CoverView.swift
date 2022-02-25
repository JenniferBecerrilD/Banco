//
//  CoverView.swift
//  Banco
//
//  Created by Jennifer Becerril on 13/12/21.
//

import SwiftUI

struct CoverView: View {
    var body: some View {
        
        ZStack{
            Color(.gray).opacity(0.06).ignoresSafeArea(.all)
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}


