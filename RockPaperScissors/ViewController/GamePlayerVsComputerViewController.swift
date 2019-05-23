//
//  GamePlayerVsComputerViewController.swift
//  RockPaperScissors
//
//  Created by esport on 23/05/2019.
//

import UIKit

class GamePlayerVsComputerViewController: UIViewController {

    
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var paperImage: UIImageView!
    @IBOutlet weak var scissorsImage: UIImageView!
    @IBOutlet weak var resultGame: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    class func create() -> GamePlayerVsComputerViewController {
        let board = UIStoryboard(name: "Main", bundle: nil)
        let vc = board.instantiateViewController(withIdentifier: "GamePlayerVsComputerViewController") as! GamePlayerVsComputerViewController
        return vc
    }
    
    let presenter = PlayerVsComputerRoundPresenter()

    var player : Player = Player(id: 1, name: "Joueur")
    var computer : Computer = Computer(id: 2, name: "Ordinateur")
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
        initImageSign()
        playBtn.isEnabled = false
        self.resultGame.numberOfLines = 0
        self.resultGame.lineBreakMode = .byWordWrapping
        // Do any additional setup after loading the view.
    }
    
    func initImageSign(){
        rockImage.image = UIImage(named: "hand-rock")
        rockImage.layer.borderColor = UIColor.white.cgColor
        rockImage.layer.borderWidth = 2
        
        
        let tapRock = UITapGestureRecognizer(target: self, action: #selector(chooseRock))
        tapRock.numberOfTapsRequired = 1
        rockImage.isUserInteractionEnabled = true
        rockImage.addGestureRecognizer(tapRock)
        
        paperImage.image = UIImage(named: "hand-paper")
        paperImage.layer.borderColor = UIColor.white.cgColor
        paperImage.layer.borderWidth = 2
        
        let tapPaper = UITapGestureRecognizer(target: self, action: #selector(choosePaper))
        tapPaper.numberOfTapsRequired = 1
        paperImage.isUserInteractionEnabled = true
        paperImage.addGestureRecognizer(tapPaper)
        
        scissorsImage.image = UIImage(named: "hand-scissors")
        scissorsImage.layer.borderColor = UIColor.white.cgColor
        scissorsImage.layer.borderWidth = 2
        
        let tapScissors = UITapGestureRecognizer(target: self, action: #selector(chooseScissors))
        tapScissors.numberOfTapsRequired = 1
        scissorsImage.isUserInteractionEnabled = true
        scissorsImage.addGestureRecognizer(tapScissors)
        
        
    }
    
    @IBAction func dissMissView(_ sender: Any) {
       self.dismiss(animated: true, completion: nil)
    }

    @objc func chooseRock() {
        self.presenter.setChoiceSignPlayer(player: player, sign: .rock)
    }
    
    @objc func choosePaper() {
       self.presenter.setChoiceSignPlayer(player: player, sign: .paper)
    }
    
    @objc func chooseScissors() {
       self.presenter.setChoiceSignPlayer(player: player, sign: .scissors)
    }
    
    
    @IBAction func play(_ sender: Any) {
        self.computer.setRandomChoice()
        self.presenter.resultPlayerVsComputer(player1: player, player2: computer)
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


extension GamePlayerVsComputerViewController : GamePlayerVsComputerViewProtocol{
    
    func borderSelectSign(sign : Sign) {
        rockImage.layer.borderColor = UIColor.white.cgColor
        paperImage.layer.borderColor = UIColor.white.cgColor
        scissorsImage.layer.borderColor = UIColor.white.cgColor
        
        switch sign {
            case .rock: rockImage.layer.borderColor = UIColor.blue.cgColor
            case .paper: paperImage.layer.borderColor = UIColor.blue.cgColor
            case .scissors: scissorsImage.layer.borderColor = UIColor.blue.cgColor
        }
        playBtn.isEnabled = true
    }
    
}

extension GamePlayerVsComputerViewController : GameViewProtocol {
    func updateResult(result: String) {
        self.resultGame.text = result
        
    }
}
