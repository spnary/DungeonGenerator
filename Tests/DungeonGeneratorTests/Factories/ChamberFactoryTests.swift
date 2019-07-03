//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import XCTest
@testable import DungeonGenerator

class ChamberFactoryTests: XCTestCase {
    let origin = Point(0, 0)
    let factory = ChamberFactory()

    func testGenerateReturnsChamberAt0_0() {
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.origin, origin, "Chamber should be placed at (0, 0)")
    }
    
    func testGenerateReturnsChamberAt1_3() {
        let newPoint = Point(1,3)
        let chamber = factory.generate(at: newPoint, entrance: (.south, Door()))
        XCTAssertEqual(chamber.origin, newPoint, "Chamber should be placed at (1, 3)")
    }
    
    func test1Returns20x20Chamber() {
        setupDie(roll: 1)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 20, height: 20), "Chamber should be 20x20 on a roll of 1")
    }
    
    func test2Returns20x20Chamber() {
        setupDie(roll: 2)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 20, height: 20), "Chamber should be 20x20 on a roll of 2")
    }

    func test3Returns30x30Chamber() {
        setupDie(roll: 3)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 30, height: 30), "Chamber should be 30x30 on a roll of 3")
    }
    
    func test4Returns30x30Chamber() {
        setupDie(roll: 4)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 30, height: 30), "Chamber should be 30x30 on a roll of 4")
    }
    
    func test5Returns40x40Chamber() {
        setupDie(roll: 5)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 40, height: 40), "Chamber should be 40x40 on a roll of 5")
    }
    
    func test6Returns40x40Chamber() {
        setupDie(roll: 6)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 40, height: 40), "Chamber should be 40x40 on a roll of 6")
    }
    
    func test7Returns20x30Chamber() {
        setupDie(roll: 7)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 20, height: 30), "Chamber should be 20x30 on a roll of 7")
    }
    
    func test8Returns20x30Chamber() {
        setupDie(roll: 8)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 20, height: 30), "Chamber should be 20x30 on a roll of 8")
    }
    
    func test9Returns30x20Chamber() {
        setupDie(roll: 9)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 30, height: 20), "Chamber should be 30x20 on a roll of 9")
    }
    
    func test10Returns30x40Chamber() {
        setupDie(roll: 10)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 30, height: 40), "Chamber should be 30x40 on a roll of 10")
    }
    
    func test11Returns30x40Chamber() {
        setupDie(roll: 11)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 30, height: 40), "Chamber should be 30x40 on a roll of 11")
    }
    
    func test12Returns40x30Chamber() {
        setupDie(roll: 12)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 40, height: 30))
    }
    
    func test13Returns40x50Chamber() {
        setupDie(roll: 13)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 40, height: 50))
    }
    
    func test14Returns50x40Chamber() {
        setupDie(roll: 14)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 50, height: 40))
    }
    
    func test15Returns50x80Chamber() {
        setupDie(roll: 15)
        let chamber = factory.generate(at: origin, entrance: (.south, Door()))
        XCTAssertEqual(chamber.size, Size(width: 50, height: 80))
    }
    
    func setupDie(roll: Int) {
        factory.die = FakeDie(roll: roll)
    }
    
    
}

