//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

public class Chamber: Room {
    public var entrance: (Direction, Exit)
    public var exits: [Direction : Exit?]
    
    public let origin: Point
    
    public let size: Size
    
    public init(entrance: (Direction, Exit), exits: [Direction: Exit?], origin: Point, size: Size) {
        self.entrance = entrance
        self.exits = exits
        self.origin = origin
        self.size = size
    }
    
}
