//
//  HandSign.swift
//  RockPaperScissors
//
//  Created by esport on 21/05/2019.
//

import Foundation

class HandSign {
    
    var choice : Sign?
    var random : Sign {
                    get {
                        return getRandomSign()
                    }
    }

    private func getRandomSign() -> Sign {
        let listSign : [Sign] = Sign.AllCases.init()
        let rand = arc4random_uniform(UInt32(listSign.count))
        return listSign[Int(rand)]
    }
    
}
