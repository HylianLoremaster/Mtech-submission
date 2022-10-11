//
//  ViewController.swift
//  Calculator
//
//  Created by Jordan Hansen on 9/2/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentCalculationLabel: UILabel!
    @IBOutlet weak var lastCalculationLabel: UILabel!
    @IBOutlet var numberButtons: [UIButton]!
    @IBOutlet var operatorButtons: [UIButton]!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var negativeButton: UIButton!
    
    var firstnum: Int = 0
    var secondNum: Int = 0
    enum operatorList {
        case add, subtract, multiply, divide, nothing
    }
    var actionToPerform: operatorList = operatorList.nothing
    var currentCalculation = 0
    var lastCalculation = 0
    var enterUsed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        let numString = sender.configuration!.title!
        if actionToPerform == .nothing {
            enterUsed = false
            if firstnum == 0 {
                firstnum = Int(numString)!
            } else {
                firstnum *= 10
                firstnum += Int(numString)!
            }
        } else {
            if secondNum == 0 {
                secondNum = Int(numString)!
            } else {
                secondNum *= 10
                secondNum += Int(numString)!
            }
        }
        updateUI()
    }
    
    @IBAction func operatorButtonTapped(_ sender: UIButton) {
        let operationString = sender.configuration!.title!
        switch operationString {
        case "/":
            actionToPerform = .divide
        case "-":
            actionToPerform = .subtract
        case "*":
            actionToPerform = .multiply
        default:
            actionToPerform = .add
        }
    }
    
    @IBAction func negativeButtonTapped(_ sender: UIButton) {
        if actionToPerform == .nothing {
            firstnum *= -1
        } else {
            secondNum *= -1
        }
        updateUI()
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        firstnum = 0
        secondNum = 0
        actionToPerform = .nothing
        lastCalculation = currentCalculation
        enterUsed = false
        updateUI()
    }
    
    @IBAction func enterButtonTapped(_ sender: Any) {
        enterUsed = true
        switch actionToPerform {
        case .multiply:
            currentCalculation = firstnum * secondNum
        case .subtract:
            currentCalculation = firstnum - secondNum
        case .divide:
            currentCalculation = firstnum / secondNum
        default:
            currentCalculation = firstnum + secondNum
        }
        firstnum = 0
        secondNum = 0
        actionToPerform = .nothing
        updateUI()
    }
        
    func updateUI() {
        lastCalculationLabel.text = String(lastCalculation)
        if enterUsed {
            currentCalculationLabel.text = String(currentCalculation)
        } else if actionToPerform == .nothing {
            currentCalculationLabel.text = String(firstnum)
        } else {
            currentCalculationLabel.text = String(secondNum)
        }
    }
    
}

