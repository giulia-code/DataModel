//
//  CerchioView.swift
//  DataModel
//
//  Created by Macbook on 06/04/2020.
//  Copyright © 2020 Giulia Catalano. All rights reserved.
//

import SwiftUI

struct CerchioView: View {
    @ObservedObject var myCounter: Counter
    
    var body: some View {
        VStack {
            Image(systemName: "circle").font(.largeTitle)
            Text("Cerchio \(self.myCounter.counter)").font(.largeTitle)
            Button("Incrementa") {
                self.myCounter.incrementa()
            }.font(.title)
        }
    }
}

struct CerchioView_Previews: PreviewProvider {
    static var previews: some View {
        CerchioView(myCounter: Counter())
    }
}
