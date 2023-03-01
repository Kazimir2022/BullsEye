//
//  ViewController.swift
//  BullsEye
//
//  Created by Kazimir on 1.03.23.
//

import UIKit

class ViewController: UIViewController {
     var currentValue: Int = 0
    var targetValue = 0
    @IBOutlet var slider:UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)  // нет в области видимости без аутлета
        targetValue = Int.random(in: 1...100)
    }
    
    
    @IBAction func showAlert() {
      let message = " The value of the slider is: \(currentValue) \n" +
        "The target value is: \(targetValue) "//срабатывает событие при нажитии на кнопку

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

