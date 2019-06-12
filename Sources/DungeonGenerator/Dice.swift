//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

struct Die: DieProtocol {
    let numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    func roll() -> Int {
        return Int(arc4random_uniform(UInt32(numberOfSides)))
    }
}
