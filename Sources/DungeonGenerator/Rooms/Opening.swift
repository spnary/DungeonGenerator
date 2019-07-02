//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/29/19.
//

import Foundation

class Opening: Exit {
    let type: ExitType = .opening
    var rooms: (Room?, Room?) = (nil, nil)
}
