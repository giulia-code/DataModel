//
//  QuadratoView.swift
//  DataModel
//
//  Created by Macbook on 06/04/2020.
//  Copyright © 2020 Giulia Catalano. All rights reserved.
//

import SwiftUI

struct QuadratoView: View {
    @ObservedObject var myCounter: Counter
    
    var body: some View {
        VStack {
            Image(systemName: "square").font(.largeTitle)
            Text("Quadrato \(self.myCounter.counter)").font(.largeTitle)
            Button("Decrementa") {
                self.myCounter.decrementa()
            }.font(.title)
        }
        
    }
}

struct QuadratoView_Previews: PreviewProvider {
    static var previews: some View {
        QuadratoView(myCounter: Counter())
    }
}
