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
    
    func validateInfo(total: String, detail: String){
        if(!(total.isEmpty || detail.isEmpty)){
            postTransfer(total: total, detail: detail)
        }else{
            //Mostrar mensaje al usuario
        }
    }
    
   
    func postTransfer(total: String, detail: String){
        
        let urlRequest = URL(string: Constants.urlBase+"/transfers")! // URL del servicio
        
        // Generamos el objeto con los datos a enviar al backend
        let addTransferBodyRequest = TransferBodyRequest (amount: total, concept: detail, destinationAccount: "", deviceTokenCookie: "", sourceAccount: "", sdkData: "")
        
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
            
           
            self.addTransferBodyResponse = try! JSONDecoder().decode(GenericBodyResponse.self,from: data!)
            //self.updateReviews()
            
            print("Servicio consumido")
            print(self.addTransferBodyResponse.actionCode)
            self.transferResult(addTransferBodyResponse: self.addTransferBodyResponse)
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
