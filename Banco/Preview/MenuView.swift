//
//  MenuView.swift
//  Banco
//
//  Created by Jennifer Becerril on 27/10/21.
//

import SwiftUI

struct MenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(Constants.mainOrangeColor)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                MenuHeaderView(isShowing: $isShowing)
                    .frame(height: 100)
                
                ForEach(MenuViewModel.allCases, id: \.self){ option in NavigationLink(
                    destination: option.destination, label: {
                    MenuOptionView(viewModel: option)
                }
                )
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isShowing: .constant(true))
    }
}
