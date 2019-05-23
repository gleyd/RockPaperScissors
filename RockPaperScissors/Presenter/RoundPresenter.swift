//
//  RoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation


class RoundPresenter {

    
    func resultGame(player1: Player, player2: Player) -> String{
        guard let choice1 = player1.choice, let choice2 = player2.choice else {return "" }
        guard choice1 != choice2 else {return "Egalité (\(choice1.description))"}
        if choice1.beatsList.contains(choice2) {
            return "\(player1.name)(\(choice1.description)) gagne contre \(player2.name)(\(choice2.description))"
        } else {
            return "\(player1.name)(\(choice1.description)) perd contre \(player2.name)(\(choice2.description))"
        }
    }

}
