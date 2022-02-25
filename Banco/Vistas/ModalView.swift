//
//  ModalView.swift
//  Banco
//
//  Created by Jennifer Becerril on 05/11/21.
//

import SwiftUI

struct ModalView: View {
    
    
    @Binding var isShowing: Bool
    @State private var isDragging = false
    @State var name = ""
    @State var account = ""
    
    @State var clabe = ""
    @State var alias = ""
    
    //@State private var curHeight: CGFloat = 400
    @State private var curHeight: CGFloat = 500
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    
    var dragPercentage: Double {
        let res = Double(curHeight - minHeight) / (maxHeight - minHeight)
        return max(0, min(1, res))
    }
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            if isShowing {
                Color.black
                    .opacity(startOpacity + (endOpacity - startOpacity) * dragPercentage)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                mainView
                .transition(.move(edge: .bottom))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
        
        
    }
    
    var mainView: some View {
        
        
        
        ZStack{
            Color(.gray).opacity(0.1).ignoresSafeArea(.all)
            ZStack {
                
                
                Capsule()
                    .frame(width: 40, height: 6)
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001))
            .gesture(dragGesture)
            
            
            ZStack{
                
                VStack{
                    
                    Spacer()
                    Text("Crear cuenta")
                        .font(.headline)
                    
                    
                    
                    VStack (alignment: .leading){
                        VStack{
                            Text("Clabe")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            //.frame(alignment: .leading)
                               
                        }
                            
            
                        
                        HStack{
                            Image(systemName: "key.fill")
                                .font(.title2)
                                .foregroundColor(.black)
                                .frame(width: 35)
                            
                            TextField("Ingresa la clabe", text: $clabe)
                                
                        }
                        .padding()
                        //.background(Color.gray.opacity(0.12))
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(15)
                        .padding(.horizontal)
                        
                   
                    
                    
                        Spacer().frame(height: 40)
                    
                    
                    
                        VStack{
                            Text("Alias")
                                .font(.headline)
                                .foregroundColor(Color.black)
                            //.frame(alignment: .leading)
                               
                        }
                            
            
                        
                        HStack{
                            Image(systemName: "person.fill.checkmark")
                                .font(.title2)
                                .foregroundColor(.black)
                                .frame(width: 35)
                            
                            TextField("Ingresa el alias", text: $alias)
                                
                        }
                        .padding()
                        //.background(Color.gray.opacity(0.12))
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(15)
                        .padding(.horizontal)
                        
                        Spacer().frame(height: 40)
                        
                        buttonView()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.horizontal)
                    .shadow(color: .gray, radius: 2, x: 2, y: 4)
        
                  

                    
                    

                
                
                
                
   
                    
                    
 
                    
                    
                  
                }//Termina VStack
                
            }
            .frame(maxHeight: .infinity)
            .padding(.bottom, 35)
            
        }
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: curHeight / 2)
                    
            }
                .foregroundColor(.white)
        
        )
        .animation(isDragging ? nil : .easeOut(duration: 0.45))
       
        
}
    
    
    @State private var prevDragTranslation = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
                
                if !isDragging {
                    isDragging = true
                }
                
                let dragAmount = val.translation.height - prevDragTranslation.height
                
                if curHeight > maxHeight || curHeight < minHeight {
                    curHeight -= dragAmount / 6
                } else {
                    curHeight -= dragAmount
                }
                
                prevDragTranslation = val.translation
            }
            .onEnded{ val in
                prevDragTranslation = .zero
                if curHeight > maxHeight {
                    curHeight = maxHeight
                } else if curHeight < minHeight {
                    curHeight = minHeight
                }
            }
           
    }
    
       
}


struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct buttonView : View{
    
    @State private var alertSwift = false
    
    var body : some View{
        
        VStack{
            
    
            Button(action: {
                self.alertSwift = true
                
            }, label: {
                Text("Registrar").font(.headline)
                    .foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
            })
                .background(Color(.orange))
                .clipShape(Capsule())
                .padding(.horizontal)
                .cornerRadius(8)
                .alert(isPresented: $alertSwift, content: {
                    
                    Alert(title: Text("Registro completo!"), message: Text("Tu cuenta se registrò correctamente"), dismissButton: .default(Text("Cerrar")))
                    
                })
         
            
            HStack{
                
                
            }.padding(.top, 25)
            
            
        }
    }
}
