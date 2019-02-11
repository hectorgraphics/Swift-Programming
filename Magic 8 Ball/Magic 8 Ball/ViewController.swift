//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jonathan Hector on 11.02.19.
//  Copyright © 2019 Jonathan Hector. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionTxtFld: UITextField!
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var currQuesLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    @IBAction func askQuesBtn(_ sender: Any) {
        newBallImage();
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage();
    }
    
    func randNumGen() -> Int { return Int.random(in: 1...5) }
    
    func newBallImage() {
        currQuesLbl.text = "\(questionTxtFld.text ?? "")?"
        questionTxtFld.text = "";
        if let question = currQuesLbl?.text {
            imageDisplay.image = question.isEmpty ? UIImage(named: "ball3") :  UIImage(named: "ball\(randNumGen())")
        }
        
    }
    
}

