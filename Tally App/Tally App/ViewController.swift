//
//  ViewController.swift
//  Tally App
//
//  Created by Jordan Hansen on 10/14/22.
//

import UIKit

class ViewController: UIViewController {
    var startingValue = 0
    var incrementSize = 1
    @IBOutlet weak var startingValueLabel: UILabel!
    @IBOutlet weak var incrementSizeLabel: UILabel!
    
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var startingValueStepper: UIStepper!
    @IBOutlet weak var incrementSizeStepper: UIStepper!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == continueButton {
            segue.destination.navigationItem.title = nameTextField.text
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startingValueStepper.wraps = true
        startingValueStepper.autorepeat = true
        incrementSizeStepper.wraps = true
        incrementSizeStepper.autorepeat = true
        incrementSizeStepper.minimumValue = 1
        incrementSizeStepper.maximumValue = 10
    }
    
    
    
    
    @IBAction func startingValueChanged(_ sender: UIStepper) {
        startingValueLabel.text = Int(sender.value).description
        startingValue = Int(sender.value)
    }
    
    @IBAction func incrementValueChanged(_ sender: UIStepper) {
        incrementSizeLabel.text = Int(sender.value).description
        incrementSize = Int(sender.value)
        
    }
    
    
    @IBSegueAction func showCounter(_ coder: NSCoder) -> CounterViewController? {
        return CounterViewController(coder: coder, startValue: startingValue, incrementatiion: incrementSize)
    }
    
    
}

