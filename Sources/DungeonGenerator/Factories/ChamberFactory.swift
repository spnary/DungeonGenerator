//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

public class ChamberFactory {
    
    var die: DieProtocol
    
    public convenience init() {
        self.init(die: Die(numberOfSides: 15))
    }
    
    init(die: DieProtocol = Die(numberOfSides: 15)) {
        self.die = die
    }
    
    public func generate(at origin: Point) -> Chamber {
        let roomSize = generateChamberSize()
        return Chamber(entrances: [.north: nil,
                                       .south: nil,
                                       .east: nil,
                                       .west:nil], origin: origin, size: roomSize)
    }
    
    public func generate(at origin: Point, startingExit: (Direction, Exit)) -> Chamber {
        let chamber = generate(at: origin)
        chamber.entrances[startingExit.0] = startingExit.1
        return chamber
    }
    
    private func generateChamberSize() -> Size {
        let dieRoll = die.roll()
        switch dieRoll {
        case 1, 2:
            return Size(width: 20, height: 20)
        case 3, 4:
            return Size(width: 30, height: 30)
        case 5, 6:
            return Size(width: 40, height: 40)
        case 7, 8:
            return Size(width: 20, height: 30)
        case 9:
            return Size(width: 30, height: 20)
        case 10, 11:
            return Size(width: 30, height: 40)
        case 12:
            return Size(width: 40, height: 30)
        case 13:
            return Size(width: 40, height: 50)
        case 14:
            return Size(width: 50, height: 40)
        case 15:
            return Size(width: 50, height: 80)
        default:
            return Size(width: 0, height: 0)
        }
    }
}

