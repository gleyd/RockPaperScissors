//
//  RoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class RoundPresenter {
    
    
    
   // set Choice of the player
    func setHandSignPlayer(player: Player, sign: Sign){
      player.choice = sign
    }
    
    // if nil, don't have winner, it's draw
    func result(player1: Player, player2: Player) -> Player?{
        guard let choice1 = player1.choice, let choice2 = player2.choice else {return nil }
        guard choice1 != choice2 else {return nil}
        switch (choice1,choice2) {
        case (.rock,.scissors):
            return player1
        case (.scissors,.paper):
            return player1
        case (.paper,.rock):
            return player1
        default:
           return  player2
        }
    }
    

}
