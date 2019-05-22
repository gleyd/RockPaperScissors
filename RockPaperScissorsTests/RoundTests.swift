//
//  RoundTests.swift
//  RockPaperScissorsTests
//
//  Created by esport on 21/05/2019.
//

import XCTest






class RoundTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUserChoiceRockBeatsUserChoiceScissors(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .rock
        let user2 = User(id: 2)
        user2.choice = .scissors
        let round : RoundPresenter = RoundPresenter()
        
        let expected : User = user1
        
        // Act
        if let result = round.result(user1: user1, user2: user2) {
            
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Rock don't beat Scissors")
        }
    }
    
    func testUserChoiceScissorsBeatsUserChoicePaper(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .scissors
        let user2 = User(id: 2)
        user2.choice = .paper
        let round : RoundPresenter = RoundPresenter()
        
        let expected : User = user1

        // Act
        if let result = round.result(user1: user1, user2: user2) {
            
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Scissors don't beat Paper")
        }
    }

    func testUserChoicePaperBeatsUserChoiceRock(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .paper
        let user2 = User(id: 2)
        user2.choice = .rock
        let round : RoundPresenter = RoundPresenter()
        
        let expected : User = user1

        // Act
        if let result = round.result(user1: user1, user2: user2) {
            
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Paper don't beat Rock")
        }
    }
    
    func testUsersHandSignEqualPaper(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .paper
        let user2 = User(id: 2)
        user2.choice = .paper
        let round : RoundPresenter = RoundPresenter()
        
        let expected :User? = nil
        
        // Act
        if expected == round.result(user1: user1, user2: user2) {
            
        // Assert
            XCTAssert(true, "the result of the round is equal")
        } else {
            XCTAssert(false, "the result of the round is not equal")
        }
    }
    
    func testUsersHandSignEqualRock(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .rock
        let user2 = User(id: 2)
        user2.choice = .rock
        let round : RoundPresenter = RoundPresenter()
        
        let expected :User? = nil
        
        // Act
        if expected == round.result(user1: user1, user2: user2) {
            
        // Assert
            XCTAssert(true, "the result of the round is equal")
        } else {
            XCTAssert(false, "the result of the round is not equal")
        }
    }
    
    func testUsersHandSignEqualScissor(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .scissors
        let user2 = User(id: 2)
        user2.choice = .scissors
        let round : RoundPresenter = RoundPresenter()
        
        let expected :User? = nil
        
        // Act
        if expected == round.result(user1: user1, user2: user2) {

        // Assert
            XCTAssert(true, "the result of the round is equal")
        } else {
            XCTAssert(false, "the result of the round is not equal")
        }
    }
    

    func testUserChoiceScissorsLoseUserChoiceRock(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .scissors
        let user2 = User(id: 2)
        user2.choice = .rock
        let round : RoundPresenter = RoundPresenter()
        
        let expected :User? = user2
        // Act

        if let result = round.result(user1: user1, user2: user2) {
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Scissors don't lose Rock")
        }
    }

    func testUserChoicePaperLoseUserChoiceScissors(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .paper
        let user2 = User(id: 2)
        user2.choice = .scissors
        let round : RoundPresenter = RoundPresenter()
        
        let expected :User? = user2
        // Act

        if let result = round.result(user1: user1, user2: user2) {
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Paper don't lose Scissors")
        }
    }

    func testUserChoiceRockLoseUserChoicePaper(){
        // Arrange
        let user1 = User(id: 1)
        user1.choice = .rock
        let user2 = User(id: 2)
        user2.choice = .paper
        let round : RoundPresenter = RoundPresenter()
        
        let expected :User? = user2
        
        // Act
        if let result = round.result(user1: user1, user2: user2) {
        // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "Rock don't lose Paper")
        }
    }


    func testUserChooseRock(){
        // Arrange
        let user = User(id: 1)
        let round : RoundPresenter = RoundPresenter()
        
        let expected :HandSign? = .rock
        // Act
        round.setHandSignUser(user: user, handSign: .rock)
        
        // Assert
        if let result = user.choice {
            // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "User don't choose Rock")
        }
    }
    
    func testUserChoosePaper(){
        // Arrange
        let user = User(id: 1)
        let round : RoundPresenter = RoundPresenter()
        
        let expected :HandSign? = .paper
        // Act
        round.setHandSignUser(user: user, handSign: .paper)
        
        // Assert
        if let result = user.choice {
            // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "User don't choose Paper")
        }
    }
    
    func testUserChooseScissors(){
        // Arrange
        let user = User(id: 1)
        let round : RoundPresenter = RoundPresenter()
        
        let expected :HandSign? = .scissors
        // Act
        round.setHandSignUser(user: user, handSign: .scissors)
        
        // Assert
        if let result = user.choice {
            // Assert
            XCTAssertEqual(expected, result)
        } else {
            XCTAssert(false, "User don't choose Scissors")
        }
    }
    
    func testComputerVersusComputer(){
        // Arrange
         let computer1 = Computer()
         let computer2 = Computer()
         computer1.handsign.random
         computer2.handsign.random
        
        let expected = round.result(user1: computer1, user2: computer2)
        // Act
        let result = round.playComputerVersusComputer()
        // Assert
         XCTAssertEqual(expected, result)
        
    }
    
    
}
