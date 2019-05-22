//
//  Computer.swift
//  RockPaperScissors
//
//  Created by esport on 22/05/2019.
//

import Foundation

protocol RandomChoiceProtocol {
    func setRandomChoice()
}


class Computer : Player, RandomChoiceProtocol{
    func setRandomChoice() {
        let listSign : [Sign] = Sign.allCases
        let rand = Int.random(in: 0 ..< listSign.count)
        self.choice = listSign[Int(rand)]
    }

}

