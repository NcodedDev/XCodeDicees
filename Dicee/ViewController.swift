//
//  ViewController.swift
//  Dicee
//
//  Created by ADT on 12/23/18.
//  Copyright © 2018 ADT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceLeft: Int = 0
    var randomDiceRight: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomnizeDiceImages()
    }
    
    func randomnizeDiceImages(){
        randomDiceLeft = Int(arc4random_uniform(6))
        randomDiceRight = Int(arc4random_uniform(6))
        
        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceLeft])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceRight])
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        randomnizeDiceImages();
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomnizeDiceImages()
    }
    
}

