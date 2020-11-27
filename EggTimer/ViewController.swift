//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    //let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        var secondsRemaining = eggTimes[hardness]!
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if secondsRemaining > 0 {
                print ("\(secondsRemaining) seconds")
                secondsRemaining -= 1
            } else {
                Timer.invalidate()
                titleLabel.text = "Done!"
            }
            
        }
        
        
    }
    
}
