//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

public class Chamber: Room {
    public var entrances: [Direction : Exit?]
    
    public let origin: Point
    
    public let size: Size
    
    public init(entrances: [Direction: Exit?], origin: Point, size: Size) {
        self.entrances = entrances
        self.origin = origin
        self.size = size
    }
    
}
