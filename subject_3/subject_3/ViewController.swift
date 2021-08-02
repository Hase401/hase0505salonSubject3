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
        let number1 = Int(inputedNumberTextField1.text!) ?? 0
        let number2 = Int(inputedNumberTextField2.text!) ?? 0

        let signedNumber1: Int
        if changedSingSwitch1.isOn {
            signedNumber1 = -number1
        } else {
            signedNumber1 = number1
        }

        let signedNumber2: Int
        if changedSingSwitch2.isOn {
            signedNumber2 = -number2
        } else {
            signedNumber2 = number2
        }

        changedNumberLabel1.text = "\(signedNumber1)"
        changedNumberLabel2.text = "\(signedNumber2)"

        let resultNumber = signedNumber1 + signedNumber2
        resultNumberLabel.text = "\(resultNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputedNumberTextField1.keyboardType = .numberPad
        inputedNumberTextField2.keyboardType = .numberPad
    }
}
