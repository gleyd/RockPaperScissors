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
        
        let expected : String = "\(player1.name)(\(Sign.rock.description)) gagne contre \(player2.name)(\(Sign.scissors.description))"
        
        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
            
        // Assert
        XCTAssertEqual(expected, result)
    }
    
    func testPlayerChoiceScissorsBeatsPlayerChoicePaper(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .scissors
        let player2 = Player(id: 2)
        player2.choice = .paper
     
        let expected : String = "\(player1.name)(\(Sign.scissors.description)) gagne contre \(player2.name)(\(Sign.paper.description))"

        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)

        // Assert
        XCTAssertEqual(expected, result)
    }

    func testPlayerChoicePaperBeatsPlayerChoiceRock(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .paper
        let player2 = Player(id: 2)
        player2.choice = .rock
       
        let expected : String = "\(player1.name)(\(Sign.paper.description)) gagne contre \(player2.name)(\(Sign.rock.description))"

        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }
    
    func testPlayersHandSignEqualPaper(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .paper
        let player2 = Player(id: 2)
        player2.choice = .paper
   
        let expected :String = "Egalité (\(Sign.paper.description))"
        
        /// Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }
    
    func testPlayersHandSignEqualRock(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .rock
        let player2 = Player(id: 2)
        player2.choice = .rock
      
        let expected :String = "Egalité (\(Sign.rock.description))"
        
        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }
    
    func testPlayersHandSignEqualScissor(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .scissors
        let player2 = Player(id: 2)
        player2.choice = .scissors
     
        let expected :String = "Egalité (\(Sign.scissors.description))"
        
        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }
    

    func testPlayerChoiceScissorsLosePlayerChoiceRock(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .scissors
        let player2 = Player(id: 2)
        player2.choice = .rock
        
        let expected : String = "\(player1.name)(\(Sign.scissors.description)) perd contre \(player2.name)(\(Sign.rock.description))"
        
        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }

    func testPlayerChoicePaperLosePlayerChoiceScissors(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .paper
        let player2 = Player(id: 2)
        player2.choice = .scissors
    
        let expected : String = "\(player1.name)(\(Sign.paper.description)) perd contre \(player2.name)(\(Sign.scissors.description))"
        
        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }

    func testPlayerChoiceRockLosePlayerChoicePaper(){
        // Arrange
        let player1 = Player(id: 1)
        player1.choice = .rock
        let player2 = Player(id: 2)
        player2.choice = .paper

        let expected : String = "\(player1.name)(\(Sign.rock.description)) perd contre \(player2.name)(\(Sign.paper.description))"
        
        // Act
        let result = presenter.resultGame(player1: player1, player2: player2)
        
        // Assert
        XCTAssertEqual(expected, result)
    }
}
