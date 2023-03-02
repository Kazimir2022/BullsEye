//
//  ViewController.swift
//  BullsEye
//
//  Created by Kazimir on 1.03.23.
//

import UIKit

class ViewController: UIViewController {
     var currentValue: Int = 50
    var targetValue = 0
    var score = 0
    @IBOutlet var slider:UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    
    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
          let points = 100 - difference
          score += points
        
        
          let message = "Your scored \(points) points"
                        
        let alert = UIAlertController(
            title: "Hello, World",
            message: message,
            preferredStyle: .alert)

          let action = UIAlertAction(
            title: message,
            style: .default,
            handler: nil)

          alert.addAction(action)
          present(alert, animated: true, completion: nil)
        startNewRound()
                
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)

    }
    func startNewRound(){
     targetValue = Int.random(in: 1...100)
     currentValue = 50
     slider.value = Float(currentValue)
     updateLabels()
    
    }
    
    func updateLabels() {
      targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
    }
    
}

