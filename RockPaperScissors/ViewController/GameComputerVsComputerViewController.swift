//
//  GameComputerVsComputerViewController.swift
//  RockPaperScissors
//
//  Created by esport on 23/05/2019.
//

import UIKit

class GameComputerVsComputerViewController: UIViewController {
    
    
    class func create() -> GameComputerVsComputerViewController {
        let board = UIStoryboard(name: "Main", bundle: nil)
        let vc = board.instantiateViewController(withIdentifier: "GameComputerVsComputerViewController") as! GameComputerVsComputerViewController
        return vc
    }
    
    @IBOutlet weak var resultGame: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    
    let presenter = ComputerVsComputerRoundPresenter()
    
    var computer1 : Computer = Computer(id: 1, name: "Ordinateur1")
    var computer2 : Computer = Computer(id: 2, name: "Ordinateur2")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
        self.resultGame.numberOfLines = 0
        self.resultGame.lineBreakMode = .byWordWrapping
        // Do any additional setup after loading the view.
    }
    
    @IBAction func play(_ sender: Any) {
        self.computer1.setRandomChoice()
        self.computer2.setRandomChoice()
        self.presenter.resultComputerVsComputer(computer1: computer1, computer2: computer2)
    }
    
    
    @IBAction func dissMissView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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


extension GameComputerVsComputerViewController : GameViewProtocol {
    func updateResult(result: String) {
      self.resultGame.text = result
    }
}
