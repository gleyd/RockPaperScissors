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
        guard let choice1 = computer1.choice, let choice2 = computer2.choice else {return}
         var result = ""
        if let resultWinner = self.result(player1: computer1, player2: computer2){
            switch resultWinner {
            case computer1 :
                result = "\(computer1.name)(\(choice1.description)) gagne contre \(computer2.name)(\(choice2.description))"
            case computer2 :
                result = "\(computer1.name)(\(choice1.description)) perd contre \(computer2.name)(\(choice2.description))"
            default : break
            }
        } else {
             result = "Egalité (\(choice1.description))"
        }
        self.view?.updateResult(result: result)
    }
    
}
