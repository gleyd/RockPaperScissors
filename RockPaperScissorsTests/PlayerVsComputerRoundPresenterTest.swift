//
//  PlayerVsComputerRoundPresenterTest.swift
//  RockPaperScissorsTests
//
//  Created by esport on 23/05/2019.
//

import XCTest

class PlayerVsComputerRoundPresenterTests: XCTestCase {
    
     var presenter : PlayerVsComputerRoundPresenter!
    override func setUp() {
       presenter = PlayerVsComputerRoundPresenter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPlayerChooseRock(){
        // Arrange
        let player = Player(id: 1)
        
        
        let expected :Sign = .rock
        // Act
        presenter.setChoiceSignPlayer(player: player, sign: .rock)
        
        // Assert
        if let result = player.choice {
            // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Player don't choose Rock")
        }
    }
    
    func testPlayerChoosePaper(){
        // Arrange
        let player = Player(id: 1)
   
        
        let expected :Sign = .paper
        // Act
        presenter.setChoiceSignPlayer(player: player, sign: .paper)
        
        // Assert
        if let result = player.choice {
            // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Player don't choose Paper")
        }
    }
    
    func testPlayerChooseScissors(){
        // Arrange
        let player = Player(id: 1)
   
        
        let expected :Sign = .scissors
        // Act
        presenter.setChoiceSignPlayer(player: player, sign: .scissors)
        
        // Assert
        if let result = player.choice {
            // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Player don't choose Scissors")
        }
    }


}




