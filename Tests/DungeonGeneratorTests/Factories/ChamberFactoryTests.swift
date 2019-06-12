//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import XCTest
@testable import DungeonGenerator

class ChamberFactoryTests: XCTestCase {
    let factory = ChamberFactory()
    func testGenerateReturnsChamberAt0_0() {
        let origin = Point(0,0)
        let chamber = factory.generate(at: origin)
        XCTAssertEqual(chamber.origin, origin, "Chamber should be placed at (0, 0)")
    }
    
    func testGenerateReturnsChamberAt1_3() {
        let origin = Point(1,3)
        let chamber = factory.generate(at: origin)
        XCTAssertEqual(chamber.origin, origin, "Chamber should be placed at (1, 3)")
    }
    
    func test1Returns20x20Chamber() {
        let origin = Point(0, 0)
        let die = FakeDie(roll: 1)
        factory.die = die
        let chamber = factory.generate(at: origin)
        
        XCTAssertEqual(chamber.size, Size(width: 20, height: 20), "Chamber should be 20x20 on a roll of 1")
        
    }
    
    func test3Returns30x30Chamber() {
        let origin = Point(0, 0)
        let die = FakeDie(roll: 3)
        factory.die = die
        let chamber = factory.generate(at: origin)
        XCTAssertEqual(chamber.size, Size(width: 30, height: 30), "Chamber should be 30x30 on a roll of 1")
    }
    
    
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
}

