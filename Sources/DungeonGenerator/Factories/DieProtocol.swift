//
//  File.swift
//  
//
//  Created by Stephen Nary on 6/11/19.
//

import Foundation

protocol DieProtocol {
    var numberOfSides: Int { get }
    func roll() -> Int
}
