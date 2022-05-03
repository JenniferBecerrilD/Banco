//
//  Bar2View.swift
//  Banco
//
//  Created by Jennifer Becerril on 13/12/21.
//

/*import SwiftUI


struct Bar2View: View {
    
    @State var selection: Int = 0
    
    var body: some View {
        
        TabView(selection: $selection) {
            Text("")
            //ContentView()
                .tabItem{
                    
                }
                .tag(0)
            
            Text("")
            //ListView()
                .tabItem{
                    
                }
                .tag(1)
            
            Text("")
            //TransferView()
                .tabItem{
                    
                }
                .tag(2)
        }
        .overlay(
            Color.orange
                .edgesIgnoringSafeArea(.vertical)
                .frame(height: 60) 
                .overlay(HStack {
                    Spacer()
                    
                    
                    Button(action: {
                        self.selection = 0
                    }, label: {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color.white)
                            .opacity(selection == 0 ? 1 : 0.4)
                    })
                    Spacer()
                    
                   
                    Button(action: {
                        self.selection = 1
                    }, label: {
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color.white)
                            .opacity(selection == 1 ? 1 : 0.4)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selection = 2
                    }, label: {
                        Image(systemName: "arrow.left.arrow.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color.white)
                            .opacity(selection == 2 ? 1 : 0.4)
                    })
                    Spacer()
                    
                })
        ,alignment: .bottom)
    }
}



struct Bar2View_Previews: PreviewProvider {
    static var previews: some View {
        Bar2View()
    }
}
*/
