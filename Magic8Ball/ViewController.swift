//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Alex Lolokov on 21.10.2017.
//  Copyright © 2017 Alex Lolokov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumberBall = 0
    @IBOutlet weak var Ball: UIImageView!
    let massiveBall = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        generateAswerTheQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        generateAswerTheQuestion()
    }
    
    func generateAswerTheQuestion() {
        randomNumberBall = Int(arc4random_uniform(5))
        Ball.image = UIImage(named: massiveBall[randomNumberBall])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateAswerTheQuestion()
    }
    
}

