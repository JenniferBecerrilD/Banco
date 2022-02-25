//
//  MenuOptionView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

struct MenuOptionView: View {
    let viewModel: MenuViewModel
    var body: some View {
        HStack{
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            
            Text(viewModel.title)
                .font(.headline)
                //.font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct MenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionView(viewModel: .transferir)
    }
}
