//
//  ViewController.swift
//  tips
//
//  Created by Apurva Shah on 12/22/15.
//  Copyright © 2015 Apurva Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totaloneLabel: UILabel!
    @IBOutlet weak var totaltwoLabel: UILabel!
    @IBOutlet weak var totalthreeLabel: UILabel!
    @IBOutlet weak var totalfourLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(_ sender: AnyObject) {

        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totaloneLabel.text = String(format: "$%.2f", total)
        totaltwoLabel.text = String(format: "$%.2f", total/2)
        totalthreeLabel.text = String(format: "$%.2f", total/3)
        totalfourLabel.text = String(format: "$%.2f", total/4)
    }

    
    
    
    
    
    
    
    @IBAction func onTap(_ sender: AnyObject) {
    view.endEditing(true)
    }
}

