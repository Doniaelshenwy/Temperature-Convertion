//
//  ViewController.swift
//  application Convert the Temp
//
//  Created by Donia Elshenawy on 12/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempCelsiusLabel: UILabel!
    
    @IBOutlet weak var celsiusTempTextField: UITextField!
    
    @IBOutlet weak var convertTempLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fahrenheitTempBtn(_ sender: UIButton) {
        guard let CelsiusTemp  = celsiusTempTextField.text else {
            return
        }
        guard let convertCelsiusTemp = Double(CelsiusTemp) else {
            return
        }
        if(convertCelsiusTemp <= 100){
        let converFahrenheitTemp = (convertCelsiusTemp*9/5)+32
        convertTempLabel.text = String(converFahrenheitTemp) + " F"
        }
        else{
            convertTempLabel.text = "Enter invalid value"
        }
    }
    
    @IBAction func kelvinTempBtn(_ sender: UIButton) {
        guard let CelsiusTemp  = celsiusTempTextField.text else {
            return
        }
        guard let convertCelsiusTemp = Double(CelsiusTemp) else {
            return
        }
        if(convertCelsiusTemp <= 100){
        let converKelvinTemp = convertCelsiusTemp+273.1518
        convertTempLabel.text = String(converKelvinTemp) + " K"
        }
        else{
            convertTempLabel.text = "Enter invalid value"
        }
    }
}

