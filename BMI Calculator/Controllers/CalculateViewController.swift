//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()

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
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let heightValue: Float = heightSlider.value
        let weightValue: Float = weightSlider.value
        calculatorBrain.calculateBMI(heightValue, weightValue)
        
        // perform and do segue, show controller with segue identifier "showResult"
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    // preparasi navigasi segue, mengidentifikasi indentifier segue, can have access to class properties  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            // as! -> untuk downCasting UIViewContoller menjadi ResultViewController
            let resultView = segue.destination as! ResultViewController
            resultView.bmi = calculatorBrain.getBMIValue()
            resultView.advice = calculatorBrain.getBMIAdvice()
            resultView.color = calculatorBrain.getBMIColor()
        }
    }
}

