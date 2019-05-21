//
//  RoundTests.swift
//  RockPaperScissorsTests
//
//  Created by esport on 21/05/2019.
//

import XCTest

enum HandSign {
    case rock
    case paper
    case scissors
}

class RoundPresenter {

    func result(choice1: HandSign, choice2: HandSign) -> HandSign{
        return .paper
    }
    
}


class RoundTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRockBeatsScissors(){
        // Arrange
        let choice1 : HandSign = .rock
        let choice2 : HandSign = .scissors
        let round : RoundPresenter = RoundPresenter()
        
        let expected : HandSign = .rock
        
        // Act
        let result = round.result(choice1: choice1, choice2: choice2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }
}
