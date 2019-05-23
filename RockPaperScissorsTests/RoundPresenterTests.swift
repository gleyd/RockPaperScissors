//
//  RoundTests.swift
//  RockPaperScissorsTests
//
//  Created by esport on 21/05/2019.
//

import XCTest

class RoundPresenterTests: XCTestCase {

    var presenter : RoundPresenter!
    override func setUp() {
        presenter = RoundPresenter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPlayerChoiceRockBeatsPlayerChoiceScissors(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .rock
        let player2 = Player(id: 2)
        player2.choice = .scissors
        
        
        let expected : Player = player1
        
        // Act
        if let result = presenter.result(player1: player1, player2: player2) {
            
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Rock don't beat Scissors")
        }
    }
    
    func testPlayerChoiceScissorsBeatsPlayerChoicePaper(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .scissors
        let player2 = Player(id: 2)
        player2.choice = .paper
     
        
        let expected : Player = player1

        // Act
        if let result = presenter.result(player1: player1, player2: player2) {
            
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Scissors don't beat Paper")
        }
    }

    func testPlayerChoicePaperBeatsPlayerChoiceRock(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .paper
        let player2 = Player(id: 2)
        player2.choice = .rock
       
        
        let expected : Player = player1

        // Act
        if let result = presenter.result(player1: player1, player2: player2) {
            
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Paper don't beat Rock")
        }
    }
    
    func testPlayersHandSignEqualPaper(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .paper
        let player2 = Player(id: 2)
        player2.choice = .paper
   
        
        let expected :Player? = nil
        
        // Act
        if expected == presenter.result(player1: player1, player2: player2) {
            
        // Assert
            XCTAssert(true, "the result of the round is equal")
        } else {
            XCTAssert(false, "the result of the round is not equal")
        }
    }
    
    func testPlayersHandSignEqualRock(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .rock
        let player2 = Player(id: 2)
        player2.choice = .rock
      
        
        let expected :Player? = nil
        
        // Act
        if expected == presenter.result(player1: player1, player2: player2) {
            
        // Assert
            XCTAssert(true, "the result of the round is equal")
        } else {
            XCTAssert(false, "the result of the round is not equal")
        }
    }
    
    func testPlayersHandSignEqualScissor(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .scissors
        let player2 = Player(id: 2)
        player2.choice = .scissors
     
        
        let expected :Player? = nil
        
        // Act
        if expected == presenter.result(player1: player1, player2: player2) {

        // Assert
            XCTAssert(true, "the result of the round is equal")
        } else {
            XCTAssert(false, "the result of the round is not equal")
        }
    }
    

    func testPlayerChoiceScissorsLosePlayerChoiceRock(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .scissors
        let player2 = Player(id: 2)
        player2.choice = .rock
       
        
        let expected :Player? = player2
        // Act

        if let result = presenter.result(player1: player1, player2: player2) {
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Scissors don't lose Rock")
        }
    }

    func testPlayerChoicePaperLosePlayerChoiceScissors(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .paper
        let player2 = Player(id: 2)
        player2.choice = .scissors
    
        
        let expected :Player? = player2
        // Act

        if let result = presenter.result(player1: player1, player2: player2) {
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Paper don't lose Scissors")
        }
    }

    func testPlayerChoiceRockLosePlayerChoicePaper(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .rock
        let player2 = Player(id: 2)
        player2.choice = .paper

        let expected :Player? = player2
        
        // Act
        if let result = presenter.result(player1: player1, player2: player2) {
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Rock don't lose Paper")
        }
    }


    
    
    
}
