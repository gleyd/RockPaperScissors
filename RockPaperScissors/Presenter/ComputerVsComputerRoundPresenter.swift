//
//  ComputerVsComputerRoundPresenter.swift
//  RockPaperScissors
//
//  Created by esport on 23/05/2019.
//

import Foundation

class ComputerVsComputerRoundPresenter : RoundPresenter {
    
    private var view : GameComputerVsComputerViewController?
    
    func attachView(_ view: GameComputerVsComputerViewController){
        self.view = view
    }
    
    func detachView(){
        self.view = nil
    }
    
    func computerVersusComputer() -> Player?{
        let computer1 = Computer(id:1)
        let computer2 = Computer(id:2)
        computer1.setRandomChoice()
        computer2.setRandomChoice()
        
        return self.result(player1: computer1, player2: computer2)
    }
    
}
