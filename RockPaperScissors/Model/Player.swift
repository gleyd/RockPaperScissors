//
//  User.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class Player : Equatable{
    
    private let id : Int
    var name : String
    var choice : Sign?
    
    init(id:Int) {
        self.id = id
        self.name = "Player\(id)"
    }
    
    init(id:Int, name: String) {
        self.id = id
        self.name = name
    }
    
    static func ==(lhs: Player, rhs: Player) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}



