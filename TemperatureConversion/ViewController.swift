//
//  ViewController.swift
//  TemperatureConversion
//
//  Created by Ahmed Taha on 12/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempTextField: UITextField!
    
    @IBOutlet weak var tempLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempLbl.text = "Enter Temperature"
        
    }
// Conversion temperature from celsius to fahrenhiet when pressing fahernheitBtn
    @IBAction func fahrenheitBtn(_ sender: Any) {
        
        let temp = Double(tempTextField.text!)!
        
        if temp <= 100 {
                        
            tempLbl.text = "\(temp * (9 / 5) + 32) F"
            
        }else {
            
            tempLbl.text = "Enter Temperature less then 100°C"
            
        }
    }
    
// Conversion temperature from Celsius to Kelvin when pressing kelvinBtn
    @IBAction func kelvinBtn(_ sender: Any) {
        
        let temp = Double(tempTextField.text!)!
        
        if temp <= 100 {
            
            tempLbl.text = "\(temp + 273.1518) K"

        }else {
            
            tempLbl.text = "Enter Temperature less then 100°C"
            
        }
    }
}

