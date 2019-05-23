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
    func resultPlayerVsComputer(player1: Player, player2: Player) {
        if let player = self.result(player1: player1, player2: player2){
            var result = ""
            switch player {
            case player1 :
                guard let choice1 = player1.choice, let choice2 = player2.choice else {return}
                result = "\(player1.name)(\(choice1.description)) gagne contre \(player2.name)(\(choice2.description))"
            case player2 :
                guard let choice1 = player1.choice, let choice2 = player2.choice else {return}
                result = "\(player1.name)(\(choice1.description)) perd contre \(player2.name)(\(choice2.description))"
            default : break
            }
            self.view?.updateResult(result: result)
        } else {
            let result = "Egalité"
            self.view?.updateResult(result: result)
        }
    }

}
