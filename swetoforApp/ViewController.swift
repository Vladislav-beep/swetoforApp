//
//  ViewController.swift
//  swetoforApp
//
//  Created by user180355 on 10/14/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.alpha = 0.3
        yellowView.alpha = 0.3
        redView.alpha = 0.3
        greenView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        redView.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        if greenView.alpha < 1 && yellowView.alpha < 1 && redView.alpha < 1 {
            greenView.alpha = 1
            
        } else if greenView.alpha == 1 && yellowView.alpha < 1 && redView.alpha < 1 {
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else if yellowView.alpha == 1 && greenView.alpha < 1 && redView.alpha < 1 {
            redView.alpha = 1
            yellowView.alpha = 0.3
        } else if redView.alpha == 1 && yellowView.alpha < 1 && greenView.alpha < 1 {
            redView.alpha = 0.3
            greenView.alpha = 1
        }
    }
    
}

