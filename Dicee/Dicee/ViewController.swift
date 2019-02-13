//
//  ViewController.swift
//  Dicee
//
//  Created by Jonathan Hector on 10.02.19.
//  Copyright © 2019 Jonathan Hector. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var rand1: Int = 0;
    private var rand2: Int = 0;
    private var dice1: Int = 0;
    private var dice2: Int = 0;
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        self.createImage();
    }
    
    @IBAction func rollBtn(_ sender: UIButton) {
        dice1 = rand1;
        dice2 = rand2;
        self.createImage();
        
    }
    
    private func randNumGen() -> Int { return Int.random(in: 1..<7); }
    
    // Limits the dice roll to not too much duplicate
    private func prevDiceNumTester(currentDice: Int, prevDice: Int) -> Int {
        return currentDice == prevDice ? randNumGen() : currentDice;
    }
    
    private func createImage() {
        rand1 = self.randNumGen();
        rand2 = self.randNumGen();
        let currDice1 = prevDiceNumTester(currentDice: rand1, prevDice: dice1);
        let currDice2 = prevDiceNumTester(currentDice: rand2, prevDice: dice2);
        print("\(currDice1) : \(currDice2)");
        
        dice1ImageView.image = UIImage(named: "dice\(currDice1)");
        dice2ImageView.image = UIImage(named: "dice\(currDice2)");
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        createImage();
    }
}

