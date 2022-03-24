//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Quan's Macbook on 20/03/2022.
//

import UIKit

class ConversionViewController : UIViewController ,UITextFieldDelegate {
    
    
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var ItextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ItextField.placeholder = "value"
        ItextField.textAlignment = .center
        updateCelsiusLabel()
    }
    
    @IBAction func fahrenheitFieldEditingChanged(_ sender: Any) {
        if let text = ItextField.text , let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            if (ItextField.text == "") {
                ItextField.placeholder = "value"
            }
            fahrenheitValue = nil
        }
    }
    // dismisskeyboard
    
    
    var fahrenheitValue : Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue : Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    let numberFormatter : NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    } ()
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        print("Current text: \(textField.text!)")
        print("Replacement text: \(string)")
        return true
    }
    
    
}

