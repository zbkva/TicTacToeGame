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
    
    func getSign() -> String {
        if chosen {return "Cross"}
        else {return "Circle"}
    }
    
    func getComputersSign() -> String {
        if !chosen {return "Cross"}
        else {return "Circle"}
    }
    func getRand() -> Int {
        return Int.random(in: 1...9)
    }
    
    func computersMove() {
        let rand = getRand()
        if(rand == 1){
            if(zeroZero.image(for: .normal) == nil){
                zeroZero.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 2){
            if(zeroOne.image(for: .normal) == nil){
                zeroOne.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 3){
            if(zeroTwo.image(for: .normal) == nil){
                zeroTwo.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 4){
            if(oneZero.image(for: .normal) == nil){
                oneZero.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 5){
            if(oneOne.image(for: .normal) == nil){
                oneOne.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 6){
            if(oneTwo.image(for: .normal) == nil){
                oneTwo.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 7){
            if(twoZero.image(for: .normal) == nil){
                twoZero.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 8){
            if(twoOne.image(for: .normal) == nil){
                twoOne.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 9){
            if(twoTwo.image(for: .normal) == nil){
                twoTwo.setImage( UIImage.init(named: getComputersSign()), for: .normal)
            }
            else {
                computersMove()
            }
            
        }
    }
    
    func isAllDone() -> Bool {
        if (zeroZero.image(for: .normal) != nil &&
            zeroOne.image(for: .normal) != nil &&
            zeroTwo.image(for: .normal) != nil &&
            oneZero.image(for: .normal) != nil &&
            oneOne.image(for: .normal) != nil &&
            oneTwo.image(for: .normal) != nil &&
            twoZero.image(for: .normal) != nil &&
            twoOne.image(for: .normal) != nil &&
            twoTwo.image(for: .normal) != nil)
        {
            return true
        }
        else {
            return false
        }
    }
    
    
    @IBAction func zeroZeroTapped(_ sender: Any) {
        if(zeroZero.image(for: .normal) == nil){
            zeroZero.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
        
    }
    
    @IBAction func zeroOneTapped(_ sender: Any) {
        if(zeroOne.image(for: .normal) == nil){
            zeroOne.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func zeroTwoTapped(_ sender: Any) {
        if(zeroTwo.image(for: .normal) == nil){
            zeroTwo.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func oneZeroTapped(_ sender: Any) {
        if(oneZero.image(for: .normal) == nil){
            oneZero.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func oneOneTapped(_ sender: Any) {
        if(oneOne.image(for: .normal) == nil){
            oneOne.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func oneTwoTapped(_ sender: Any) {
        if(oneTwo.image(for: .normal) == nil){
            oneTwo.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func twoZeroTapped(_ sender: Any) {
        if(twoZero.image(for: .normal) == nil){
            twoZero.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func twoOneTapped(_ sender: Any) {
        if(twoOne.image(for: .normal) == nil){
            twoOne.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
    
    @IBAction func twoTwoTapped(_ sender: Any) {
        if(twoTwo.image(for: .normal) == nil){
            twoTwo.setImage( UIImage.init(named: getSign()), for: .normal)
            computersMove()
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
}
