import Foundation
import Combine
import SwiftUI

class TransferViewModel :ObservableObject{
    
    var didChange = PassthroughSubject<TransferViewModel, Never>()

    
    init(){
        getTransfers()//Funcion que hace la conexion con el backend
    }
    
   
    @Published var trans: TransferDataResponse = TransferDataResponse(data:[]){
        willSet{
            //Se ejecuta antes de que la priopiedad Cambie
        }
        didSet{
            //Se ejecuta cuando la variable ya cambio
            didChange.send(self)
        }
    }
    
    func getTransfers(){
        
        let urlRequest = URL(string: Constants.urlBase+"/transfers")! // URL del servicio
        let jwt = Constants.token // Token de identificación
        
        var request = URLRequest(url:urlRequest)
        request.httpMethod = "GET" //Tipo de metodo
        request.setValue(jwt, forHTTPHeaderField: "Authorization") //jwt para identificar al usuario
       
        
        // Ejecutamos la llamada
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        let getTransfersRequest = urlSession.dataTask(with: request, completionHandler: {data, response, error -> Void in
            //Validación del codigo de respuesta
            self.trans = try! JSONDecoder().decode(TransferDataResponse.self,from: data!)
            //self.updateReviews()
            
        })
        getTransfersRequest.resume()
        
    }
    
    /*func updateReviews(){
     
        DispatchQueue.main.async {
            self.transfers = self.transferList
        }
        
    }*/
    
}


