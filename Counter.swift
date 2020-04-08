//
//  Counter.swift
//  DataModel
//
//  Created by Macbook on 06/04/2020.
//  Copyright © 2020 Giulia Catalano. All rights reserved.
//

import Foundation
import SwiftUI

class Counter: ObservableObject {
    @Published var counter: Int = 0
    
    func incrementa(){
        self.counter += 1
    }
    
    func decrementa() {
        self.counter -= 1
    }
}
