//
//  RSAPlugin.swift
//  App
//
//  Created by Luis Angel Cruz Ramirez on 12/03/21.
//

import Foundation
import RSAMobileCollectionSDK


public class  RSAImplementation: NSObject,CollectionModuleCallback,ObservableObject {
        
    @Published var payload = ""
    @Published var onError = false
    
    
    func collectData(listener : @escaping (String)->()) {
        DispatchQueue.main.async {
            let mMobileApi = MobileAPI();
            var properties = [String: String]()
            properties[CONFIGURATION_KEY.description] = "1"
            mMobileApi.initSDK(properties)
            mMobileApi.collectInfo(self)
        }
    }

    public func onSuccess(_ collectionModuleResponse: CollectionModuleResponse!) {
        payload = collectionModuleResponse.payload
        onError = false
        print(payload)
       
    }
    
    public func onFailure(_ exception: NSException!) {
        onError = true
        print("error SDK")
       
    }
}

