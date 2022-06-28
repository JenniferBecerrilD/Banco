//
//  BancoApp.swift
//  Banco
//
//  Created by Jennifer Becerril on 24/10/21.
//

import SwiftUI

@main
struct BancoApp: App {
    var body: some Scene {
        WindowGroup {
            BarView().onAppear {
                let sdkCollection = RSAImplementation()
                sdkCollection.collectData {
                    print($0)
                }
            }
        }
    }
}


