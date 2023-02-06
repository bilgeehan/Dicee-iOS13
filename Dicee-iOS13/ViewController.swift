//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
   var array = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]

    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        //        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
//        Int.random(in: 1...5)
        diceImageView1.image = array.randomElement()
        diceImageView2.image = array.randomElement()
        
        
    }
}

