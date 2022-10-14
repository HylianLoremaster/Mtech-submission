//
//  CounterViewController.swift
//  Tally App
//
//  Created by Jordan Hansen on 10/14/22.
//

import UIKit

class CounterViewController: UIViewController {
    var value: Int
    var incrementation: Int
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    
    init?(coder: NSCoder, startValue: Int, incrementatiion: Int) {
        value = startValue
        self.incrementation = incrementatiion
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        numberLabel.text = String(value)
    }
    
    @IBAction func incrementButtonTapped(_ sender: Any) {
        value += incrementation
        updateUI()
    }
    
}
