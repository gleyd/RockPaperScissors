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
 
    @IBAction func goGamePlayerVsComputer(_ sender: Any) {
       choosePlayerVersusComputer()
    }
    
    
    @IBAction func goGameComputerVsComputer(_ sender: Any) {
       chooseComputerVersusComputer()
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
        let vc = GamePlayerVsComputerViewController.create()
        self.present(vc, animated: true, completion: nil)
    }
    
    func chooseComputerVersusComputer() {
        let vc = GameComputerVsComputerViewController.create()
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
}
