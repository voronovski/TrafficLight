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
    }

    @IBAction func startButtonDidTapped() {
    }
    
}

