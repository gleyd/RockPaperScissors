//
//  GameModeViewController.swift
//  RockPaperScissors
//
//  Created by esport on 22/05/2019.
//

import UIKit

class GameModeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GameModeViewController : GameModeViewProtocol {
    func choosePlayerVersusComputer() {
        let vc = GameViewController.create(gameMode: .playerVersusComputer)
        self.present(vc, animated: true, completion: nil)
    }
    
    func chooseComputerVersusComputer() {
        let vc = GameViewController.create(gameMode: .computerVersusComputer)
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
}
