//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

struct Passage: Room {
    var adjacentRooms: [Direction : Room?]
    
    let origin: Point
    
    let size: Size
}