//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation

class ExitFactory {
    var die: DieProtocol
    
    init(die: DieProtocol = Die(numberOfSides: 2)) {
        self.die = die
    }
    
    func generate() -> Exit {
        let roll = die.roll()
        switch roll {
        case 1:
            return Door()
        case 2:
            return Opening()
        default:
            return Opening()
        }
    }
}
