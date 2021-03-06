//
//  AddTransferViewModel.swift
//  Banco
//
//

import Foundation
import Combine

class AddTransferViewModel :ObservableObject{
    
    var didChange = PassthroughSubject<AddTransferViewModel, Never>()
    
    
    @Published var addTransferBodyResponse : GenericBodyResponse = GenericBodyResponse(actionCode: "", deviceTokenCookie: "", jwt: ""){
        willSet{
            
        }
        didSet{
            
            didChange.send(self)
        }
    }
    
    func validateInfo(destiny: String, total: String, detail: String){
        if(!(destiny.isEmpty || total.isEmpty || detail.isEmpty )){
            postTransfer(destiny: destiny, total: total, detail: detail)
        }else{
            //Mostrar mensaje al usuario
        }
    }
    
   
    func postTransfer(destiny: String, total: String, detail: String){
        
        let urlRequest = URL(string: Constants.urlBase+"/transfers")! // URL del servicio
        
        // Generamos el objeto con los datos a enviar al backend
        let addTransferBodyRequest = TransferBodyRequest (amount: total, concept: detail, destinationAccount: destiny, deviceTokenCookie: "", sourceAccount: "", sdkData: "")
        
        // Transformar el objeto swift a JSON
        let requestBody = try! JSONEncoder().encode(addTransferBodyRequest)
        
        // Generar el objeto que contendra la información de la peticion al backend
        var request = URLRequest(url:urlRequest)
        
        request.httpMethod = "POST"
        
        // Agregamos el objeto con la informacióna enviar al backend a la petición
        request.httpBody =  requestBody
        
        //Indicamos el formato en el que enviamos la información
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        
        //
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        let getTransferRequest = urlSession.dataTask(with: request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                print(error)
            }
            if let data = data , let httpResponse = response as? HTTPURLResponse{
                print("Response from payees: \(httpResponse.statusCode)")
                
                switch(httpResponse.statusCode){
                case 200, 201: self.addTransferBodyResponse = try!
                    JSONDecoder().decode(GenericBodyResponse.self,from: data)
                    
                    print("Servicio consumido")
                    print(self.addTransferBodyResponse.actionCode)
                    self.transferResult(addTransferBodyResponse: self.addTransferBodyResponse)
                    default: print (httpResponse.statusCode)
                //default: self.statusCode = httpResponse.statusCode
                }
            }
            //self.addTransferBodyResponse = try! JSONDecoder().decode(GenericBodyResponse.self,from: data!)
            //self.updateReviews()
            
            
        })
        getTransferRequest.resume()
        
    }
    func transferResult(addTransferBodyResponse:GenericBodyResponse){
        if(addTransferBodyResponse.actionCode == "ALLOW"){
            
        }
    
    else{
    }
    }
}
