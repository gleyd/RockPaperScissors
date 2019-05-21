//
//  RoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class RoundPresenter {
    
    func result(choice1: HandSign, choice2: HandSign) -> HandSign{
        if choice1 == .rock && choice2 == .scissors {
           return choice1
        } else if choice1 == .scissors && choice2 == .paper {
            return choice1
        } else if choice1 == .paper && choice2 == .rock {
            return choice1
        } else {
          return choice2
        }
    }
}
