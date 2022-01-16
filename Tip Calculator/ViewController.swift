//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ryan Sevidal on 1/12/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var tipAmount: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(inputField.text!) ?? 0
        let tipPercentages = [0.15, 0.20, 0.25]
        let tip = bill * tipPercentages[tipAmount.selectedSegmentIndex]
        let total = bill + tip
        
        totalLabel.text = String(format:"$%.2f", total)
        tipLabel.text = String(format:"$%.2f", tip)
        
    }
    

}

