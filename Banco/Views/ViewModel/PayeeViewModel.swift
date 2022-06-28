import Foundation
import Combine
import SwiftUI

class PayeeViewModel :ObservableObject{
    
    var didChange = PassthroughSubject<PayeeViewModel, Never>()

    
    init(){
        getPayees() //Funcion que hace la conexion con el backend
    }
    
   
    @Published var payees: PayeeDataResponse = PayeeDataResponse(data:[]){
        willSet{
            //Se ejecuta antes de que la priopiedad Cambie
        }
        didSet{
            //Se ejecuta cuando la variable ya cambio
            didChange.send(self)
        }
    }
    
    func getPayees(){
        
        let urlRequest = URL(string: Constants.urlBase+"/payees")! // URL del servicio
        let jwt = Constants.token // Token de identificación
        
        var request = URLRequest(url:urlRequest)
        request.httpMethod = "GET" //Tipo de metodo
        request.setValue(jwt, forHTTPHeaderField: "Authorization") //jwt para identificar al usuario
       
        
        // Ejecutamos la llamada
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        let getPayeesRequest = urlSession.dataTask(with: request, completionHandler: {data, response, error -> Void in
            if let error = error {
                print(error)
            }
            if let data = data , let httpResponse = response as? HTTPURLResponse{
                print("Response from payees: \(httpResponse.statusCode)")
                
                switch(httpResponse.statusCode){
                case 200, 201: self.payees = try!
                    JSONDecoder().decode(PayeeDataResponse.self,from: data)
                    
                default: print (httpResponse.statusCode)
                //default: self.statusCode = httpResponse.statusCode
                }
            }
            //Validación del codigo de respuesta
            //self.payees = try! JSONDecoder().decode(PayeeDataResponse.self,from: data!)
            //self.updateReviews()
            
        })
        getPayeesRequest.resume()
        
    }
    
    /*func updateReviews(){
     
        DispatchQueue.main.async {
            self.transfers = self.transferList
        }
        
    }*/
    
}
