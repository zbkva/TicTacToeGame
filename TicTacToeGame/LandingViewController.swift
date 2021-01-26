//
//  ViewController.swift
//  TicTacToeGame
//
//  Created by Anastasiia Zubkova on 2021-01-16.
//

import UIKit

class LandingViewController: UIViewController {
    
    //@IBOutlet weak var CrossChoiceBtn: UIButton!
    //@IBOutlet weak var CircleChoiceBtn: UIButton!
    static var choice: Bool = true
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        } else {
            return .all
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CrossChoiceTapped(_ sender: Any) {
        LandingViewController.choice = true
        
    }
    
    @IBAction func CircleChoiceTapped(_ sender: Any) {
        LandingViewController.choice = false
    }
    

}

