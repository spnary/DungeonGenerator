//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation

public enum ExitType {
    case door
    case opening
}

public protocol Exit {
    var type: ExitType { get }
    var rooms: (Room?, Room?) { get }
}
