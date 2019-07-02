//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation
@testable import DungeonGenerator

struct FakeDie: DieProtocol {
    let numberOfSides = 20
    
    private let fixedRoll: Int
    
    init(roll: Int) {
        self.fixedRoll = roll
    }
    
    func roll() -> Int{
        return fixedRoll
    }
}
