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
        let result = self.resultGame(player1: player, player2: computer)
        self.view?.updateResult(result: result)
    }

}
