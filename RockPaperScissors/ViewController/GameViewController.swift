//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by esport on 22/05/2019.
//

import UIKit


class GameViewController: UIViewController {

    class func create(gameMode:GameMode) -> GameViewController {
        let board = UIStoryboard(name: "Main", bundle: nil)
        let vc = board.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
         vc.gameMode = gameMode
        return vc
    }
    
    let presenter = RoundPresenter()
    var gameMode : GameMode?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
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

extension GameViewController : GameViewProtocol {
    func chooseSign(sign: Sign) {
        
    }
    
    func showPopUpResult() {
        
    }
    
    func hidePopUpResult() {
         
    }
    
 
    
    
}
