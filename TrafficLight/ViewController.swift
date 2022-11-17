//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksei Voronovskii on 11/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 65
        yellowView.layer.cornerRadius = 65
        greenView.layer.cornerRadius = 65
        startNextButton.layer.cornerRadius = 12

        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    
    func changeLights() {
        if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha < 1 {
            redView.alpha = 1
        } else if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else if yellowView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        }
    }
    
    @IBAction func startNextButtonDidTapped() {
        startNextButton.setTitle("Next", for: .normal)
        changeLights()
    }
    
}

