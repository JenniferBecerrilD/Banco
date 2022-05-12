//
//  CoverView.swift
//  Banco
//
//  Created by Jennifer Becerril on 13/12/21.
//

import SwiftUI

struct CoverView: View {
    @Environment (\.colorScheme) var colorScheme
    var body: some View {
        
        ZStack{
            Color(colorScheme == .light ? .white : .black).ignoresSafeArea(.all).opacity(0.06)
            //Color(Constants.mainGrayColor).opacity(0.06).ignoresSafeArea(.all)
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


