//
//  AccountViewModel.swift
//  Banco
//
//  Created by Jennifer Becerril on 21/04/22.
//

import Foundation
import Combine
import SwiftUI

class AccountViewModel :ObservableObject{
    
    var didChange = PassthroughSubject<AccountViewModel, Never>()

    
    init(){
        getAccount() //Funcion que hace la conexion con el backend
    }
    
   
    @Published var accountBodyResponse : AccountBodyResponse = AccountBodyResponse(number: "", nickname: "", balance: 0){
        willSet{
            //Se ejecuta antes de que la priopiedad Cambie
        }
        didSet{
            //Se ejecuta cuando la variable ya cambio
            didChange.send(self)
        }
    }
    
    func getAccount(){
        
        let urlRequest = URL(string: Constants.urlBase+"/account")! // URL del servicio
        let jwt = Constants.token // Token de identificación
        
        var request = URLRequest(url:urlRequest)
        request.httpMethod = "GET" //Tipo de metodo
        request.setValue(jwt, forHTTPHeaderField: "Authorization") //jwt para identificar al usuario
       
        
        // Ejecutamos la llamada
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        let getAccountRequest = urlSession.dataTask(with: request, completionHandler: {data, response, error -> Void in
            //Validación del codigo de respuesta
            self.accountBodyResponse = try! JSONDecoder().decode(AccountBodyResponse.self,from: data!)
            //self.updateReviews()
            
        })
        getAccountRequest.resume()
        
    }
    
   
    
}
