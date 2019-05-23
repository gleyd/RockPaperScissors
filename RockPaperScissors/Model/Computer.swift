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
    
    override init(id: Int) {
        super.init(id: id)
        self.name = "Computer\(id)"
    }
    
    override init(id: Int, name: String) {
        super.init(id: id, name: name)
    }
    
    
    func setRandomChoice() {
        let listSign : [Sign] = Sign.allCases
        let rand = Int.random(in: 0 ..< listSign.count)
        self.choice = listSign[Int(rand)]
    }

}

