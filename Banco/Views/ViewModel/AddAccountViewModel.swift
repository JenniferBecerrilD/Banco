//
//  AddAccountViewModel.swift
//  Banco
//
//  Created by Jennifer Becerril on 20/04/22.
//

import Foundation
import Combine

class AddAccountViewModel :ObservableObject{
    
    var didChange = PassthroughSubject<AddAccountViewModel, Never>()
    
    
    @Published var addAccountBodyResponse : GenericBodyResponse = GenericBodyResponse(actionCode: "", deviceTokenCookie: "", jwt: ""){
        willSet{
            
        }
        didSet{
            
            didChange.send(self)
        }
    }
    
    func validateData(name: String, account: String){
        if(!(name.isEmpty || account.isEmpty)){
            postAccount(name: name, account: account)
        }else{
            //Mostrar mensaje al usuario
        }
    }
    
   
    func postAccount(name: String, account: String){
        
        let urlRequest = URL(string: Constants.urlBase+"/payees")! // URL del servicio
        
        // Generamos el objeto con los datos a enviar al backend
        let addAccountBodyRequest = AccountBodyRequest (deviceTokenCookie: "", accountNumber: account, sdkData: "", nickname: name)
        
        // Transformar el objeto swift a JSON
        let requestBody = try! JSONEncoder().encode(addAccountBodyRequest)
        
        // Generar el objeto que contendra la información de la peticion al backend
        var request = URLRequest(url:urlRequest)
        
        request.httpMethod = "POST"
        
        // Agregamos el objeto con la informacióna enviar al backend a la petición
        request.httpBody =  requestBody
        
        //Indicamos el formato en el que enviamos la información
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        
        //
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        let getAccountRequest = urlSession.dataTask(with: request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                print(error)
            }
            if let data = data , let httpResponse = response as? HTTPURLResponse{
                print("Response from account: \(httpResponse.statusCode)")
                
                switch(httpResponse.statusCode){
                case 200, 201: self.addAccountBodyResponse = try!
                    JSONDecoder().decode(GenericBodyResponse.self,from: data)
                    
                    print("Servicio consumido")
                    print(self.addAccountBodyResponse.actionCode)
                    self.accountResult(addAccountBodyResponse: self.addAccountBodyResponse)
                    default: print (httpResponse.statusCode)
                //default: self.statusCode = httpResponse.statusCode
                }
            }
            
            
            //self.updateReviews()
            
            
        })
        getAccountRequest.resume()
        
    }
    func accountResult(addAccountBodyResponse:GenericBodyResponse){
        if(addAccountBodyResponse.actionCode == "ALLOW"){
            
        }
    
    else{
    }
    }
}
