//
//  Sign.swift
//  RockPaperScissors
//
//  Created by esport on 22/05/2019.
//

import Foundation

enum Sign : String, CaseIterable {
    case rock = "pierre"
    case paper = "feuille"
    case scissors = "ciseau"
    
    var description : String {
        get {
            return self.rawValue
        }
    }
    
    var beatsList : Set<Sign> {
        switch self {
            case .rock : return [.scissors]
            case .paper : return [.rock]
            case .scissors : return [.paper]
        }
    }
}
