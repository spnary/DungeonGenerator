//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/10/19.
//

import Foundation

public protocol Room {
    var entrances: [Direction:Exit?] { get }
    var origin: Point { get }
    var size: Size { get }
}
