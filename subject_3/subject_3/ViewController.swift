//
//  ViewController.swift
//  subject_3
//
//  Created by 長谷川孝太 on 2021/05/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var inputedNumberTextField1: UITextField!
    @IBOutlet private weak var inputedNumberTextField2: UITextField!
    @IBOutlet private weak var changedSingSwitch1: UISwitch!
    @IBOutlet private weak var changedSingSwitch2: UISwitch!
    @IBOutlet private weak var changedNumberLabel1: UILabel!
    @IBOutlet private weak var changedNumberLabel2: UILabel!
    @IBOutlet private weak var resultNumberLabel: UILabel!
    
    @IBAction private func addNumber(_ sender: UIButton) {
        var number1 = Int(inputedNumberTextField1.text!) ?? 0
        var number2 = Int(inputedNumberTextField2.text!) ?? 0
        let resultNumber: Int
        
        if (changedSingSwitch1.isOn) {
            number1 = -number1
        }
        if (changedSingSwitch2.isOn) {
            number2 = -number2
        }
        resultNumber = number1 + number2
        
        changedNumberLabel1.text = "\(number1)"
        changedNumberLabel2.text = "\(number2)"
        resultNumberLabel.text = "\(resultNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        inputedNumberTextField1.keyboardType = .numberPad
        inputedNumberTextField2.keyboardType = .numberPad
    }
}
