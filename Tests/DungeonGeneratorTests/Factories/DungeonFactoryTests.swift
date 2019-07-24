//
//  File.swift
//  
//
//  Created by Stephen Nary on 7/23/19.
//

import XCTest
@testable import DungeonGenerator

class DungeonFactoryTests: XCTestCase {
    
    func testDungeonFactoryCanInitWith1Room() {
        let factory = DungeonFactory(roomCount: 1)
        XCTAssertEqual(factory.roomCount, 1)
    }
    
    func testDungeonFactory_CanInitWith2Rooms() {
        let factory = DungeonFactory(roomCount: 2)
        XCTAssertEqual(factory.roomCount, 2)
    }
    
    func testDungeon_HasStartingChamber() {
        let factory = DungeonFactory(roomCount: 2)
        let dungeon = factory.generate()
        XCTAssertNotNil(dungeon.startingChamber)
    }
    
}
