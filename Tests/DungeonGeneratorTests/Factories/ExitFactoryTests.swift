//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation
import XCTest
@testable import DungeonGenerator

class ExitFactoryTests: XCTestCase {
    
    func test1ReturnsDoor() {
        let factory = ExitFactory()
        factory.die = FakeDie(roll: 1)
        let exit = factory.generate()
        XCTAssertEqual(exit.type, ExitType.door , "ExitType should be .door on a roll of 1")
    }
    
    func test2ReturnsOpening() {
        let factory = ExitFactory()
        factory.die = FakeDie(roll: 2)
        let exit = factory.generate()
        XCTAssertEqual(exit.type, ExitType.opening, "ExitType should be opening on a roll of 2")
    }
}
