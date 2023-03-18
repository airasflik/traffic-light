//
//  ViewController.swift
//  traffic light
//
//  Created by Nikita on 18.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 20
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        }
    
    @IBAction private func startButtonTapped() {
        let alpha: CGFloat = 1
        
        switch alpha {
        case redLight.alpha:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case yellowLight.alpha:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        case greenLight.alpha:
            greenLight.alpha = 0.3
            redLight.alpha = 1
        default:
            redLight.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}

