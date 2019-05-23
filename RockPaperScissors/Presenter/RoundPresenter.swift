//
//  RoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation


class RoundPresenter {
    
    weak fileprivate var gameView : GameViewController?
    
    func attachView(_ view: GameViewController){
       self.gameView = view
    }
    
    func detachView(){
        
    }
    
    func computerVersusComputer() -> Player?{
        
        let computer1 = Computer(id:1)
        let computer2 = Computer(id:2)
        computer1.setRandomChoice()
        computer2.setRandomChoice()
        
        return self.result(player1: computer1, player2: computer2)
    }
    
   // set Choice of the player
    func setChoiceSignPlayer(player: Player, sign: Sign){
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
