//
//  ContentView.swift
//  DataModel
//
//  Created by Macbook on 06/04/2020.
//  Copyright © 2020 Giulia Catalano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var myCounter: Counter
    
    var body: some View {
        TabView() {
            CerchioView(myCounter: self.myCounter).tabItem({
               Image(systemName: "circle")
                Text("Circle")
                }).tag(0)
            QuadratoView(myCounter: self.myCounter).tabItem({
                Image(systemName: "square")
                Text("Square")
                }).tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(myCounter: Counter())
    }
}
