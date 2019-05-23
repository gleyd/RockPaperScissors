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
    
    func resultComputerVsComputer(computer1: Computer, computer2: Computer){
        let result = self.resultGame(player1: computer1, player2: computer2)
        self.view?.updateResult(result: result)
    }
    
}
