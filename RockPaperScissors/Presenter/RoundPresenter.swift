//
//  RoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation


class RoundPresenter {

    // if nil, don't have winner, it's draw
    func result(player1: Player, player2: Player) -> Player?{
        guard let choice1 = player1.choice, let choice2 = player2.choice else {return nil }
        guard choice1 != choice2 else {return nil}
        if choice1.beatsList.contains(choice2) {
            return player1
        } else {
            return player2
        }
    }

}
