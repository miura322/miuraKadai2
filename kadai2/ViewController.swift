//
//  ViewController.swift
//  kadai2
//
//  Created by 三浦桃哉 on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segmentedController: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func calculation(_ sender: Any) {
        let num1 = Double(textField1.text!) ?? 0.0
        let num2 = Double(textField2.text!) ?? 0.0
        var resultCalculation = Double()

        switch segmentedController.selectedSegmentIndex {
        case 0:
            resultCalculation = num1 + num2
        case 1:
            resultCalculation = num1 - num2
        case 2:
            resultCalculation = num1 * num2
        default:
            if num2 == 0.0 {
                resultLabel.text = "割る数には0以外を入力して下さい"
                return
            }
            resultCalculation = num1 / num2
        }
        resultLabel.text = String(resultCalculation)

    }

}
