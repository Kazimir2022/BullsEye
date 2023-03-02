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
    var round = 0
    @IBOutlet var slider:UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    
    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
          let points = 100 - difference
          score += points
        let title :String //не инициализирована, поэтому можно      let
        //var title = ""
          if difference == 0 {
            title = "Perfect!"
          } else if difference < 5 {
            title = "You almost had it!"
          } else if difference < 10 {
            title = "Pretty good!"
          } else {
            title = "Not even close..."
          }
        
          let message = "Your scored \(points) points"
                        
        let alert = UIAlertController(
            title: title,
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
        round += 1
    }
    
    func updateLabels() {
      targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
}

