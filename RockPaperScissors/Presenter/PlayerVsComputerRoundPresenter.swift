//
//  PlayerVsComputerRoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 23/05/2019.
//

import Foundation


import Foundation


class PlayerVsComputerRoundPresenter : RoundPresenter {
    
    private var view : GamePlayerVsComputerViewController?
    
    func attachView(_ view: GamePlayerVsComputerViewController){
        self.view = view
    }
    
    func detachView(){
        self.view = nil
    }
    
    // set Choice of the player
    func setChoiceSignPlayer(player: Player, sign: Sign){
        player.choice = sign
        self.view?.borderSelectSign(sign: sign)
    }
    
    func resultPlayerVsComputer(player: Player, computer: Player) {
        if let resultPlayer = self.result(player1: player, player2: computer){
            var result = ""
            switch resultPlayer {
            case player :
                guard let choice1 = player.choice, let choice2 = computer.choice else {return}
                result = "\(player.name)(\(choice1.description)) gagne contre \(computer.name)(\(choice2.description))"
            case computer :
                guard let choice1 = player.choice, let choice2 = computer.choice else {return}
                result = "\(player.name)(\(choice1.description)) perd contre \(computer.name)(\(choice2.description))"
            default : break
            }
            self.view?.updateResult(result: result)
        } else {
            let result = "Egalité"
            self.view?.updateResult(result: result)
        }
    }

}
