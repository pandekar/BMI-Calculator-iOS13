//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderAction(_ sender: UISlider) {
        let roundedValue: Float = round(sender.value * 100) / 100.0
        let text: String = "\(roundedValue)m"
        heightLabel.text = text
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let roundedValue: Int = Int(sender.value)
        let text: String = "\(roundedValue)Kg"
        weightLabel.text = text
    }
}

