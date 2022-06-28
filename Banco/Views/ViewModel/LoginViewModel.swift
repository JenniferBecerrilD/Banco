//
//  LoginViewModel.swift
//  Banco
//
//  Created by Jennifer Becerril on 19/04/22.
//

import Foundation
import Combine

class LoginViewModel :ObservableObject{
    
    var didChange = PassthroughSubject<LoginViewModel, Never>()
    
    
    @Published var loginBodyResponse : GenericBodyResponse = GenericBodyResponse(actionCode: "", deviceTokenCookie: "", jwt: ""){
        willSet{
            
        }
        didSet{
            
            didChange.send(self)
        }
    }
    
    func validateData(nickname: String, secret: String){
        if(!(nickname.isEmpty || secret.isEmpty)){
            getLogin(nickname: nickname, secret: secret)
        }else{
            //Mostrar mensaje al usuario
        }
    }
    
   
    func getLogin(nickname: String, secret: String){
        
        let urlRequest = URL(string: Constants.urlBase+"/login")! // URL del servicio
        
        // Generamos el objeto con los datos a enviar al backend
        let loginBodyRequest = LoginBodyRequest (deviceTokenCookie: "", password: secret, sdkData: "", username: nickname)
        
        // Transformar el objeto swift a JSON
        let requestBody = try! JSONEncoder().encode(loginBodyRequest)
        
        // Generar el objeto que contendra la información de la peticion al backend
        var request = URLRequest(url:urlRequest)
        
        request.httpMethod = "POST"
        
        // Agregamos el objeto con la informacióna enviar al backend a la petición
        request.httpBody =  requestBody
        
        //Indicamos el formato en el que enviamos la información
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        
        //
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        let getLoginRequest = urlSession.dataTask(with: request, completionHandler: {data, response, error -> Void in
            
            if let error = error {
                print(error)
            }
            if let data = data , let httpResponse = response as? HTTPURLResponse{
                print("Response from login: \(httpResponse.statusCode)")
                
                switch(httpResponse.statusCode){
                case 200, 201: self.loginBodyResponse = try!
                    JSONDecoder().decode(GenericBodyResponse.self,from: data)
                    
                    print("Servicio consumido")
                    print(self.loginBodyResponse.actionCode)
                    self.loginResult(loginBodyResponse: self.loginBodyResponse)
                    default: print (httpResponse.statusCode)
                //default: self.statusCode = httpResponse.statusCode
                }
            }
            
           
            //self.loginBodyResponse = try! JSONDecoder().decode(GenericBodyResponse.self,from: data!)
            //self.updateReviews()
            
           
        })
        getLoginRequest.resume()
        
    }
    func loginResult(loginBodyResponse:GenericBodyResponse){
        if(loginBodyResponse.actionCode == "ALLOW"){
            
        }
    
    else{
    }
    }
}
