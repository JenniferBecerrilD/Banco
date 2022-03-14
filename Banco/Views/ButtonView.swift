//
//  ButtonView.swift
//  Banco
//
//  Created by Jennifer Becerril on 21/11/21.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var isExpanded = false
    @State private var selectedNum = 1
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text ("Dropdown").font(.largeTitle)
            Text("Number of items").font(.title3)
            DisclosureGroup("\(selectedNum)", isExpanded: $isExpanded) {
                ScrollView{
                VStack {
                    ForEach(1...5, id: \.self){
                        num in Text ("\(num)").font(.title3)
                            .padding(.all).onTapGesture{
                                self.selectedNum = num
                                withAnimation{
                                self.isExpanded.toggle()
                            }
                            }
                    }
                }
                }.frame(height: 150)
            }.accentColor(.white)
                .font(.title2)
                .foregroundColor(.white)
                .padding(.all)
                .background(Color.blue)
                .cornerRadius(8)
            Spacer()
        }.padding(.all)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
