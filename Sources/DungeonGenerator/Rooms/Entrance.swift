//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation

public enum EntranceType {
    case door
    case opening
    case secret
}

public protocol Entrance {
    var type: EntranceType { get }
    var rooms: (Room?, Room?) { get }
}
