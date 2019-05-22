//
//  User.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class Player : Equatable{
    
    private let id : Int
    var choice : Sign?
    
    init(id:Int) {
        self.id = id
    }
    
    static func ==(lhs: Player, rhs: Player) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}



