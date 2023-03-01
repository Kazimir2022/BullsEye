//
//  ViewController.swift
//  BullsEye
//
//  Created by Kazimir on 1.03.23.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func showAlert() {
      let message = " The value of the slider is: \(currentValue)"

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
                
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)

    }
    
}
