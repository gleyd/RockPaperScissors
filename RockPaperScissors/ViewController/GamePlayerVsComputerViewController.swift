//
//  GamePlayerVsComputerViewController.swift
//  RockPaperScissors
//
//  Created by esport on 23/05/2019.
//

import UIKit

class GamePlayerVsComputerViewController: UIViewController {

    class func create() -> GamePlayerVsComputerViewController {
        let board = UIStoryboard(name: "Main", bundle: nil)
        let vc = board.instantiateViewController(withIdentifier: "GamePlayerVsComputerViewController") as! GamePlayerVsComputerViewController
        return vc
    }
    
    let presenter = PlayerVsComputerRoundPresenter()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dissMissView(_ sender: Any) {
  
        //self.dismiss(animated: true, completion: nil)
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


extension GamePlayerVsComputerViewController : GameViewProtocol {
    func chooseSign(sign: Sign) {
        print("Choise Sign")
    }
    
    func showPopUpResult() {
        
    }
    
    func hidePopUpResult() {
        
    }
    
    
    
    
}
