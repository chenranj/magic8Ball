//
//  ViewController.swift
//  magic8Ball
//
//  Created by Chenran Jin on 4/7/19.
//  Copyright © 2019 Chenran Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        imageView.image = UIImage(named:ballArray[Int(arc4random_uniform(5))])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

