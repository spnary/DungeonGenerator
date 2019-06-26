//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

public struct Chamber: Room {
    public var adjacentRooms: [Direction : Room?]
    
    public let origin: Point
    
    public let size: Size
    
}
