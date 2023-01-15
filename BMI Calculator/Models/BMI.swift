//
//  BMI.swift
//  BMI Calculator
//
//  Created by Pande Adhistanaya on 15/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(_ value: Float = 0.0, _ advice: String = "Eat some snacks!", _ color: UIColor = UIColor.blue) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
