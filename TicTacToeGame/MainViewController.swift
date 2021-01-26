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
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        } else {
            return .all
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    //checks for the same sign in three possible columns
    func checkColumns() -> Bool {
        if(
            (
                zeroZero.accessibilityLabel != nil &&
                zeroOne.accessibilityLabel != nil &&
                zeroTwo.accessibilityLabel != nil &&
                zeroZero.accessibilityLabel == zeroOne.accessibilityLabel &&
                zeroOne.accessibilityLabel == zeroTwo.accessibilityLabel
            ) ||
            (
                oneZero.accessibilityLabel != nil &&
                oneOne.accessibilityLabel != nil &&
                oneTwo.accessibilityLabel != nil &&
                oneZero.accessibilityLabel==oneOne.accessibilityLabel &&
                oneOne.accessibilityLabel==oneTwo.accessibilityLabel
            ) ||
            (
                twoZero.accessibilityLabel != nil &&
                twoOne.accessibilityLabel != nil &&
                twoTwo.accessibilityLabel != nil &&
                twoZero.accessibilityLabel==twoOne.accessibilityLabel &&
                twoOne.accessibilityLabel==twoTwo.accessibilityLabel
            )
        ){
            return true
        }
        else{
            return false
        }
    }
    
    //checks for the same sign in three possible rows
    func checkRows() -> Bool {
        if(
            (
                zeroZero.accessibilityLabel != nil &&
                oneZero.accessibilityLabel != nil &&
                twoZero.accessibilityLabel != nil &&
                zeroZero.accessibilityLabel==oneZero.accessibilityLabel && oneZero.accessibilityLabel==twoZero.accessibilityLabel
            ) ||
            (
                zeroOne.accessibilityLabel != nil &&
                oneOne.accessibilityLabel != nil &&
                twoOne.accessibilityLabel != nil &&
                zeroOne.accessibilityLabel==oneOne.accessibilityLabel && oneOne.accessibilityLabel==twoOne.accessibilityLabel
            ) ||
            (
                zeroTwo.accessibilityLabel != nil &&
                oneTwo.accessibilityLabel != nil &&
                twoTwo.accessibilityLabel != nil &&
                zeroTwo.accessibilityLabel==oneTwo.accessibilityLabel && oneTwo.accessibilityLabel==twoTwo.accessibilityLabel
            )
        ){
            return true
        }
        else{
            return false
        }
    }
    
    func checkDiagonals() -> Bool {
        if(
            (
                zeroTwo.accessibilityLabel != nil &&
                oneOne.accessibilityLabel != nil &&
                twoZero.accessibilityLabel != nil &&
                zeroTwo.accessibilityLabel==oneOne.accessibilityLabel &&
                oneOne.accessibilityLabel==twoZero.accessibilityLabel
            ) ||
            (
                zeroZero.accessibilityLabel != nil &&
                oneOne.accessibilityLabel != nil &&
                twoTwo.accessibilityLabel != nil &&
                zeroZero.accessibilityLabel==oneOne.accessibilityLabel &&
                oneOne.accessibilityLabel==twoTwo.accessibilityLabel
            )
        ){
            return true
        }
        else{
            return false
        }
    }
    
    func computersMove() {
        let rand = getRand()
        if(rand == 1){
            if(zeroZero.image(for: .normal) == nil){
                zeroZero.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                zeroZero.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 2){
            if(zeroOne.image(for: .normal) == nil){
                zeroOne.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                zeroOne.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 3){
            if(zeroTwo.image(for: .normal) == nil){
                zeroTwo.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                zeroTwo.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 4){
            if(oneZero.image(for: .normal) == nil){
                oneZero.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                oneZero.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 5){
            if(oneOne.image(for: .normal) == nil){
                oneOne.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                oneOne.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 6){
            if(oneTwo.image(for: .normal) == nil){
                oneTwo.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                oneTwo.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 7){
            if(twoZero.image(for: .normal) == nil){
                twoZero.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                twoZero.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 8){
            if(twoOne.image(for: .normal) == nil){
                twoOne.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                twoOne.accessibilityLabel = getComputersSign()
            }
            else {
                computersMove()
            }
            
        }
        if(rand == 9){
            if(twoTwo.image(for: .normal) == nil){
                twoTwo.setImage( UIImage.init(named: getComputersSign()), for: .normal)
                twoTwo.accessibilityLabel = getComputersSign()
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
    
    func goHome (alert: UIAlertAction!) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func showPopUp(_ winner: Int) {
        if(winner==1){
            let alert = UIAlertController(title: "You Won :)", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Play Again",
                                          style: .default,
                                          handler: goHome))
            self.present(alert, animated: true)
        }
        else if(winner==2){
            let alert = UIAlertController(title: "You Lost :(", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Play Again",
                                          style: .default,
                                          handler: goHome))
            self.present(alert, animated: true)
        }
        else{
            let alert = UIAlertController(title: "It's a draw :/", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Play Again",
                                          style: .default,
                                          handler: goHome))
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func zeroZeroTapped(_ sender: UIButton) {
        if(zeroZero.image(for: .normal) == nil){
            zeroZero.setImage( UIImage.init(named: getSign()), for: .normal)
            zeroZero.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            zeroOne.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            zeroTwo.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            oneZero.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            oneOne.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            oneTwo.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            twoZero.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            twoOne.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
            }
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
            twoTwo.accessibilityLabel = getSign()
            if (checkColumns() || checkRows() || checkDiagonals()){
                showPopUp(1)
                return
            }
            if (isAllDone()) {
                showPopUp(3)
                return
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.computersMove()
                if (self.checkColumns() || self.checkRows() || self.checkDiagonals()){
                    self.showPopUp(2)
                }
                
            }
        }
        else{
            print("This cell has a sign already, try another one")
        }
        if (isAllDone()){
            print("Game Ended")
        }
    }
}
