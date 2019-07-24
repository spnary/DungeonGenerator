//
//  File.swift
//  
//
//  Created by Stephen Nary on 7/23/19.
//

import Foundation

class DungeonFactory {
    
    let roomCount: Int
    let chamberFactory = ChamberFactory()
    init(roomCount: Int) {
        self.roomCount = roomCount
    }
    
    func generate() -> Dungeon {
        let startingChamber = chamberFactory.generate(at: Point(0, 0), entrance: (.south, Opening()))
        return Dungeon(chamber: startingChamber)
    }
}
