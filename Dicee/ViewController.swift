//
//  ViewController.swift
//  Dicee
//
//  Created by Lane Faison on 2/3/19.
//  Copyright © 2019 Lane Faison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray: [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollButton.layer.cornerRadius = 8
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

