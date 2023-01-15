//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Pande Adhistanaya on 14/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue () -> String {
        return String(bmi?.value ?? 0.0)
    }
    
    func getBMIAdvice () -> String {
        return bmi?.advice ?? "Sorry, no advice..."
    }
    
    func getBMIColor () -> UIColor {
        return bmi?.color ?? UIColor.systemBlue
    }
    
    mutating func calculateBMI (_ heightValue: Float, _ weightValue: Float) {
        let bmiValue: Float = round((weightValue / (heightValue * heightValue)) * 10) / 10.0
        switch bmiValue {
        case ..<18.5:
            self.bmi = BMI(bmiValue, "Eat some snacks!", UIColor.systemBlue)
        case 18.5...24.9:
            self.bmi = BMI(bmiValue, "Fit as a fiddle!", UIColor.systemGreen)
        default:
            self.bmi = BMI(bmiValue, "That's enough snacks!", UIColor.systemRed)
        }
    }
}
