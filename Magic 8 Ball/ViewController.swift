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
        changeProperties(alfa: 0.3, element: balls.randomElement()!)
    }
    
    @IBAction func askButton(_ sender: Any) {
        changeProperties(alfa: 1, element: balls.randomElement()!)
    }
    func changeProperties(alfa:CGFloat, element:String){
        predictionImage.image = UIImage(named:element)
        predictionImage.alpha = alfa
    }
    
}
