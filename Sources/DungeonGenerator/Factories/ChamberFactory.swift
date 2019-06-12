//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

class ChamberFactory {
    
    var die: DieProtocol
    
    init(die: DieProtocol = Die(numberOfSides: 20)) {
        self.die = die
    }
    
    func generate(at origin: Point) -> Chamber {
        let roomSize = generateChamberSize()
        return Chamber(adjacentRooms: [.north: nil,
                                       .south: nil,
                                       .east: nil,
                                       .west:nil], origin: origin, size: roomSize)
    }
    
    private func generateChamberSize() -> Size {
        let dieRoll = die.roll()
        switch dieRoll {
        case 1, 2:
            return Size(width: 20, height: 20)
        case 3, 4:
            return Size(width: 30, height: 30)
        default:
            return Size(width: 0, height: 0)
        }
    }
}

