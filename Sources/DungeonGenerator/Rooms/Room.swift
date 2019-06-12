//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/10/19.
//

import Foundation

protocol Room {
    var adjacentRooms: [Direction:Room?] { get }
    var origin: Point { get }
    var size: Size { get }
}
