//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation

class Door: Exit {
    let type: ExitType = .door
    
    var rooms: (Room?, Room?) = (nil, nil)
}
