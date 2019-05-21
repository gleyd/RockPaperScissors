//
//  RoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class RoundPresenter {
    
    // if nil, don't have winner, it's draw
    func result(user1: User, user2: User) -> User?{
        guard let choice1 = user1.choice, let choice2 = user2.choice else {return nil }
        guard choice1 != choice2 else {return nil}
        switch (choice1,choice2) {
        case (.rock,.scissors):
            return user1
        case (.scissors,.paper):
            return user1
        case (.paper,.rock):
            return user1
        default:
           return  user2
        }
    }

}
