//
//  User.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class User : Equatable{
    
    private let id : Int
    var choice : HandSign?
    
    init(id:Int) {
        self.id = id
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
    }
}



