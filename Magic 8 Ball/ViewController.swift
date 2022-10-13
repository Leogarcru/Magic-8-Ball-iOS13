//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var predictionImage: UIImageView!
    var balls = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        predictionImage.image = UIImage(named: balls.randomElement()!)
        predictionImage.alpha = 0.5
    }
    
    @IBAction func askButton(_ sender: Any) {
        predictionImage.image = UIImage(named: balls.randomElement()!)
        predictionImage.alpha = 1
    }
}
