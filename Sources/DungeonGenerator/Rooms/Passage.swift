//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

public struct Passage: Room {
    public var entrances: [Direction : Exit?]
    
    public let origin: Point
    
    public let size: Size
}
