//
//  MainViewController.swift
//  TicTacToeGame
//
//  Created by Anastasiia Zubkova on 2021-01-16.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var zeroZero: UIButton!
    @IBOutlet weak var zeroOne: UIButton!
    @IBOutlet weak var zeroTwo: UIButton!
    
    @IBOutlet weak var oneZero: UIButton!
    @IBOutlet weak var oneOne: UIButton!
    @IBOutlet weak var oneTwo: UIButton!
    
    @IBOutlet weak var twoZero: UIButton!
    @IBOutlet weak var twoOne: UIButton!
    @IBOutlet weak var twoTwo: UIButton!
    var chosen = LandingViewController.choice
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func zeroZeroTapped(_ sender: Any) {
        
    }
    
    @IBAction func zeroOneTapped(_ sender: Any) {
        
    }
    
    @IBAction func zeroTwoTapped(_ sender: Any) {
    }
    
    @IBAction func oneZeroTapped(_ sender: Any) {
    }
    
    @IBAction func oneOneTapped(_ sender: Any) {
    }
    
    @IBAction func oneTwoTapped(_ sender: Any) {
    }
    
    @IBAction func twoZeroTapped(_ sender: Any) {
    }
    
    @IBAction func twoOneTapped(_ sender: Any) {
    }
    
    @IBAction func twoTwoTapped(_ sender: Any) {
    }
}
